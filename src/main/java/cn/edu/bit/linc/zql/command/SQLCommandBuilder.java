package cn.edu.bit.linc.zql.command;

import cn.edu.bit.linc.zql.databases.Database;

/**
 * SQL 命令生成器
 */
public class SQLCommandBuilder {
    private CommandAdapter[] commandAdapters = new CommandAdapter[Database.DBType.values().length];

    public SQLCommandBuilder() {
    }

    public SQLCommandBuilder(CommandAdapter[] commandAdapters) {
        System.arraycopy(commandAdapters, 0, this.commandAdapters, 0, this.commandAdapters.length);
    }

    /**
     * 添加适配器
     *
     * @param commandAdapter 适配器
     */
    public SQLCommandBuilder addAdapter(CommandAdapter commandAdapter) {
        Database.DBType dbType = commandAdapter.dbType;
        commandAdapters[dbType.ordinal()] = commandAdapter;
        return new SQLCommandBuilder(commandAdapters);
    }

    /**
     * 创建用户
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand createUser(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].createUser(args), args);
    }

    /**
     * 删除用户
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand dropUser(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].dropUser(args), args);
    }

    /**
     * 授权
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand grant(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].grant(args), args);
    }

    /**
     * 收回权限
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand revokeGrant(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].revokeGrant(args), args);
    }

    /**
     * 显示权限
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand showGrant(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].showGrant(args), args);
    }

    /**
     * 删除数据表
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand dropTable(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].dropTable(args), args);
    }

    /**
     * 修改表名
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand alterTableName(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].alterTableName(args), args);
    }

    /**
     * 修改列名
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand alterColumnName(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].alterColumnName(args), args);
    }

    /**
     * 显示数据表
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand showTables(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].showTables(args), args);
    }

    /**
     * 显示数据列
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand showColumns(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].showColumns(args), args);
    }

    /**
     * 创建数据库
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL 命令
     */
    public InnerSQLCommand createDatabase(Database.DBType dbType, String... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].createDatabase(args), args);
    }

    /**
     * 创建数据库 - 更新元数据库
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL 命令
     */
    public InnerSQLCommand createDatabaseMetaDb(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].createDatabaseMetaDb(args), args);

    }

    /**
     * 删除数据库
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand dropDatabase(Database.DBType dbType, String... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].dropDatabase(args), args);
    }

    /**
     * 显示数据库
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand showDatabases(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].showDatabases(args), args);
    }

    /**
     * 使用数据库
     *
     * @param dbType 底层库类型
     * @param args   参数列表
     * @return SQL命令
     */
    public InnerSQLCommand useDatabase(Database.DBType dbType, Object... args) {
        return new InnerSQLCommand(dbType, commandAdapters[dbType.ordinal()].useDatabase(args), args);
    }

    /**
     * 测试函数
     *
     * @param args 程序参数
     */
    public static void main(String[] args) {
        SQLCommandBuilder builder = new SQLCommandBuilder().addAdapter(new MySQLCommandAdapter());
        String[] sqlArgs = new String[]{"db_test", "IF NOT EXISTS"};
        System.out.println(builder.createDatabase(Database.DBType.MySQL, sqlArgs));
    }
}
