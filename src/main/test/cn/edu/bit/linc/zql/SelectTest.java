package cn.edu.bit.linc.zql;

import cn.edu.bit.linc.zql.command.*;
import cn.edu.bit.linc.zql.connections.ZQLSession;
import cn.edu.bit.linc.zql.databases.Database;
import cn.edu.bit.linc.zql.databases.InnerDatabase;
import cn.edu.bit.linc.zql.databases.InnerDatabases;
import cn.edu.bit.linc.zql.databases.MetaDatabase;
import cn.edu.bit.linc.zql.exceptions.*;
import cn.edu.bit.linc.zql.util.StringUtil;
import cn.edu.bit.linc.zql.util.UnitTestUtils;
import joptsimple.OptionParser;
import joptsimple.OptionSet;
import junit.framework.TestCase;
import org.datanucleus.store.rdbms.identifier.IdentifierFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Assert;
import org.junit.Test;

import java.io.*;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * SELECT 单元测试
 */
public class SelectTest {
    private final static MetaDatabase metaDatabase = MetaDatabase.getInstance();
    private final static InnerDatabases innerDatabase = InnerDatabases.getInstance();
    private final static ArrayList<InnerDatabase> innerDatabasesArrayList = innerDatabase.getInnerDatabaseArray();
    private ZQLSession session;
    private String user, password, inputQuery, fileName, database;
    public final static SQLCommandBuilder sqlCommandBuilder;

    static {
        sqlCommandBuilder = new SQLCommandBuilder();
        sqlCommandBuilder.addAdapter(new MySQLCommandAdapter());
        sqlCommandBuilder.addAdapter(new HiveCommandAdapter());
    }

    private final static String testFileUrl = "test.json";
    private final static String dataDirectory = "./UnitTestData/";
    private final static String testDBName = "SQLTest";
    private final String commandTerminator = ";";

    private void parseArgs(String[] args) {
        /* 构建解析器 */
        OptionParser parser = new OptionParser();
        parser.posixlyCorrect(false);

        parser.accepts("u").withRequiredArg().ofType(String.class);
        parser.accepts("p").withRequiredArg().ofType(String.class);
        parser.accepts("f").withRequiredArg().ofType(String.class);
        parser.accepts("q").withRequiredArg().ofType(String.class);
        parser.accepts("d").withRequiredArg().ofType(String.class);
        parser.accepts("help");

        /* 解析与提取参数 */
        OptionSet options = parser.parse(args);
        if (options.has("help")) {
            printUsage();
            System.exit(0);
        }

        if (options.has("u")) {
            user = (String) options.valueOf("u");
        } else {
            user = "root";
        }

        if (options.has("p")) {
            password = (String) options.valueOf("p");
        }

        if (options.has("f")) {
            fileName = (String) options.valueOf("f");
            fileName = (String) options.valueOf("f");
        }

        if (options.has("q")) {
            inputQuery = (String) options.valueOf("q");
            fileName = null;
        }

        if (options.has("d")) {
            database = (String) options.valueOf("d");
        }

        System.out.println("User = " + user);
        System.out.println("Password = " + password);
        System.out.println("DatabaseName = " + database);
        System.out.println("File Name = " + fileName);
        System.out.println("Query = " + inputQuery);

    }

    public void doInputSQLCommand(String fileUrl) {


        /* 确定输入源 */
        BufferedReader reader = null;
        StringBuffer query;
        if (fileUrl != null) {
            try {
                reader = new BufferedReader(new FileReader(fileUrl));
            } catch (FileNotFoundException e) {
//                logger.f("找不到指定 SQL 文件 " + fileName, e);
                System.exit(-1);
            }
        } else {
            reader = new BufferedReader(new InputStreamReader(System.in));
        }

        try {
            while (true) {
                int lineCount = 1;
                // 从 System.in 输入
                if (fileUrl == null && inputQuery == null) {
                    System.out.print("\nEnter a query:\n");
                }

                query = new StringBuffer();
                while (true) {
                    // 从 System.in 输入
                    if (fileUrl == null && inputQuery == null) {
                        System.out.print(lineCount++ + " > ");
                        System.out.flush();
                    }

                    String line;
                    if (inputQuery == null) {
                        line = reader.readLine();
                    } else {
                        line = inputQuery.toString();
                        if (!line.trim().endsWith(commandTerminator)) {
                            line = line.trim().concat(commandTerminator);
                        }
                    }

                    // 退出系统
                    if (line == null || line.equalsIgnoreCase("quit") || line.equalsIgnoreCase("exit"))
                        return;

                    // 重置
                    if (line.equals("reset")) {
                        query = new StringBuffer();
                        break;
                    }

                    // 结束
                    if (line.trim().equalsIgnoreCase(commandTerminator) || line.trim().endsWith(commandTerminator)) {
                        if (line.trim().endsWith(commandTerminator)) {
                            line = line.substring(0, line.length() - commandTerminator.length());
                            line = StringUtil.RegexStringTool.removeNumberSignAndDoubleDashComment(line);
                            query.append("\n");
                            query.append(line);
                        }
                        break;
                    }
                    line = StringUtil.RegexStringTool.removeNumberSignAndDoubleDashComment(line);
                    query.append("\n");
                    query.append(line);
                }

                // 删除注释
                String queryStr = StringUtil.RegexStringTool.removeComments(query.toString().replaceAll("\n", " ")).trim();
                if (queryStr.length() == 0) continue;
                System.out.println("Query Command: " + queryStr);

                /* 执行 SQL 语句 */
                SQLCommandManager sqlCommandManager = new SQLCommandManager(queryStr, session);
                sqlCommandManager.execute();
                System.out.println(sqlCommandManager.getOutput());
                if (inputQuery != null)
                    return;
            }
        } catch (Exception e) {
//            logger.f("读取 SQL 命令失败", e);
            System.exit(0);
        }
    }

    /**
     * 输出程序用法
     */
    private static void printUsage() {
        System.err.println();
        System.err.println("Usage: java " + SelectTest.class.getName() + " -u username -p password  [-d database_name] [-f file_name] " +
                " [-q query_command]");
        System.err.println("Where:");
        System.err.println("\t-u Specifies a user name to log into a database server with.");
        System.err.println("\t-p Password specifies the user name to log into a database server with.");
        System.err.println("\t-f Specifies a file name to read commands from.");
        System.err.println("\t-q specifies an optional signal query to run instead of interacting with the command line or a file.");
    }

    // 读入测试流程JSON
    public void startTest() throws JSONException, ZQLSyntaxErrorException, ZQLInnerDatabaseExecutionException, ZQLConnectionException {
        ZQLSession session = new ZQLSession(user, database, password);
        UnitTestUtils test = new UnitTestUtils();
        String json = test.ReadFile(testFileUrl);
        org.json.JSONArray arr = new JSONArray(json);
        for (int i = 0; i < arr.length(); i++) {
            JSONObject obj = arr.getJSONObject(i);

            int enable = obj.getInt("enable");
            if (enable == 0) continue;
            //测试用例标题
            String title = obj.getString("title") != null ? obj.getString("title") : "";

            System.out.println("==================开始测试用例" + (i + 1) + "==================");
            System.out.println("测试用例:" + title);

            //初始化用sql文件名称
            String initFile = obj.getString("initFile") != null ? obj.getString("initFile") : "";
            //测试用SQL语句所指定的数据库
            String useDatabase = obj.getString("useDatabase") != null ? obj.getString("useDatabase") : "";
            //测试用SQL语句（非文件）
            String executeSQL = obj.getString("executeSQL") != null ? obj.getString("executeSQL") : "";
            //预期结果为执行错误
            int shouldBeError = obj.getInt("shouldBeError");

            //需要使用showSQL来得到对比用的结果集（针对insert、delete等没有结果集的语句使用）
            int useShowSQL = obj.getInt("useShowSQL");
            //showSQL
            String showSQL = obj.getString("showSQL") != null ? obj.getString("showSQL") : "";

            boolean onlyCheckExecute = false;
            //如果useShowSQL = 1 且showSQL为空，则只判断SQL是否运行成功
            if (showSQL.length() == 0 && useShowSQL == 1) onlyCheckExecute = true;

            //结果集输出的文件名
            String exportFile = title + "-export.xml";
            //期望结果集文件名
            String expectFile = title + "-expect.xml";
            //根据initFile初始化数据库
            ResultSet rs;

            java.util.ArrayList<InnerSQLCommand> commands = new java.util.ArrayList<InnerSQLCommand>();
            ArrayList<Integer> dbIds = new ArrayList<Integer>();
            Database.DBType type = Database.DBType.MySQL;
            int dbId;
            try {
                if (useDatabase.length() != 0) dbId = metaDatabase.getInnerDatabaseId(useDatabase);
                else dbId = 1;
            } catch (ZQLMetaDatabaseExecutionException e) {
                session.setDatabase("获取数据库所在底层库失败，错误原因：" + e.getMessage());
                return;
            }
            if (useDatabase.length() != 0) {
                InnerSQLCommand useDBcommand = sqlCommandBuilder.useDatabase(type, useDatabase);
                commands.add(useDBcommand);
                dbIds.add(dbId);
            }

            SQLCommandManager sqlCommandManager;
            if (shouldBeError == 0 && !onlyCheckExecute) {
                doInputSQLCommand(dataDirectory + initFile);
                //预执行excuteSQL，生成对比结果文件
                InnerSQLCommand innerDBcommands = sqlCommandBuilder.defaultSQL(type, executeSQL);
                commands.add(innerDBcommands);
                dbIds.add(dbId);

                sqlCommandManager = new SQLCommandManager(executeSQL, session);
                if (!sqlCommandManager.excuteSQLWithoutParser(commands, dbIds)) {
                    rs = null;
                } else {
                    rs = sqlCommandManager.getResultSet();
                }
                if (useShowSQL != 0) {
                    //执行showSQL
                    sqlCommandManager = new SQLCommandManager(showSQL, session);
                    commands = new java.util.ArrayList<InnerSQLCommand>();
                    innerDBcommands = sqlCommandBuilder.defaultSQL(type, showSQL);
                    commands.add(innerDBcommands);
                    if (!sqlCommandManager.excuteSQLWithoutParser(commands, dbIds)) {
                        rs = null;
                    } else {
                        rs = sqlCommandManager.getResultSet();
                    }
                }
                test.exportResultToXML(rs, dataDirectory + expectFile);

            }
            //重新根据initFile初始化数据库
            doInputSQLCommand(dataDirectory + initFile);
            //使用语法解析器测试语句
            if (useDatabase.length() != 0) {
                sqlCommandManager = new SQLCommandManager("USE " + useDatabase, session);
                sqlCommandManager.execute();
            }
            sqlCommandManager = new SQLCommandManager(executeSQL, session);
            System.out.println("EXECUTESQL:" + executeSQL);
            boolean testResult = false;
            boolean executeResult = sqlCommandManager.execute();
            if (!executeResult) {
                //SQL执行失败
                if (shouldBeError == 1) {
                    testResult = true;
                } else {
                    testResult = false;
                }
            } else {
                //SQL执行成功
                if (shouldBeError == 1) {
                    testResult = false;
                } else {
                    if (onlyCheckExecute) {
                        testResult = true;
                    } else {
                        rs = sqlCommandManager.getResultSet();
                        if (useShowSQL != 0) {
                            //执行showSQL
                            sqlCommandManager = new SQLCommandManager(showSQL, session);
                            System.out.println("showSQL:" + showSQL);
                            if (!sqlCommandManager.execute()) {
                                rs = null;
                            } else {
                                rs = sqlCommandManager.getResultSet();
                            }
                        }
                        test.exportResultToXML(rs, dataDirectory + exportFile);
                        //对比expectFile和exportFile
                        testResult = test.compare(dataDirectory + expectFile, dataDirectory + expectFile);
                    }

                }
            }
            try {
                Assert.assertTrue(testResult);
            } catch (AssertionError e) {
                System.out.println("==================测试用例" + (i + 1) + ":" + title + "对比失败！！！==================");
            }
            System.out.println("==================结束测试用例" + (i + 1) + "==================");
        }
    }

    public static void main(String[] args) throws IOException, JSONException, ZQLSyntaxErrorException, ZQLInnerDatabaseExecutionException, ZQLConnectionException {
        ZQLContext zqlContext = new ZQLContext();
        zqlContext.initializeSystem();
        SelectTest test = new SelectTest();
        test.parseArgs(args);
        test.session = new ZQLSession(test.user, test.database, test.password);
        test.startTest();
        test.session.closeSession();
    }
}