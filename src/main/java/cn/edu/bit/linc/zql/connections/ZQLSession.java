package cn.edu.bit.linc.zql.connections;

import cn.edu.bit.linc.zql.ZQLContext;
import cn.edu.bit.linc.zql.connections.connector.ConnectionPools;
import cn.edu.bit.linc.zql.databases.Database;
import cn.edu.bit.linc.zql.exceptions.ZQLConnectionException;
import cn.edu.bit.linc.zql.util.Logger;
import cn.edu.bit.linc.zql.util.LoggerFactory;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 会话类，用于存储用户会话，每个实例对应一个连接
 */
public class ZQLSession {
    private String errorMessage;
    private Logger logger = LoggerFactory.getLogger(getClass());
    private ArrayList<Connection> connections = new ArrayList<Connection>();      // 到数据库的连接
    private int sessionId = 0;      // 会话编号
    private static final AtomicInteger COUNTER = new AtomicInteger(0);

    /**
     * 从连接池中获取当前会话到底层库的连接
     *
     * @return 当前会话到底层库中的连接
     */
    public ArrayList<Connection> getConnections() {
        return connections;
    }

    /**
     * 构造函数
     *
     * @param userName 连接用户名
     * @param database 连接数据库
     * @param token    挑战认证数据
     */
    public ZQLSession(String userName, String database, String token) {
        sessionId = COUNTER.getAndIncrement();
        this.userName = userName;
        this.database = database;
        this.token = token;
        connectedTime = new Date();
        logger.i("Session " + sessionId + ": 用户 " + userName + " 于 " + connectedTime.toString() + " 创建新会话" + ((database == null) ? "" : "，连接到数据库 " + database));

        // 获取到底层库的连接
        ConnectionPools connectionPools = ConnectionPools.getInstance();
        ArrayList<Database> databases = new ArrayList<Database>();
        databases.add(ZQLContext.metaDatabase);
        databases.addAll(ZQLContext.innerDatabases.getInnerDatabaseArray());
        for (int i = 0; i < databases.size(); ++i) {
            try {
                logger.i("Session " + sessionId + ": 正在建立到数据库 " + databases.get(i) + " 的连接");
                connections.add(connectionPools.getConnection(i));
                logger.i("Session " + sessionId + ": 成功连接到数据库 " + databases.get(i));
            } catch (SQLException e) {
                ZQLConnectionException zqlConnectionException = new ZQLConnectionException("Session " + sessionId + ": 建立到数据库 " + databases.get(i) + " 的连接失败");
                zqlConnectionException.initCause(zqlConnectionException);
                logger.f("Session " + sessionId + ": 建立到数据库 " + databases.get(i) + " 的连接失败", zqlConnectionException);
                // 记得一定要关闭已经建立的连接
                closeSession();
            }
        }
    }

    private String userName;
    private String database;
    private String token;   // Scramble Info
    private Date connectedTime;

    /**
     * 获取错误信息
     *
     * @return 错误信息
     */
    public String getErrorMessage() {
        return errorMessage;
    }

    /**
     * 设置错误信息
     *
     * @param errorMessage 错误信息
     */
    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    /**
     * 获取连接用户名
     *
     * @return 用户名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 获取连接数据库，可以为空
     *
     * @return 所连接数据库，可能会 null
     */
    public String getDatabase() {
        return database;
    }

    /**
     * 修改用户所连接的数据库（use db_name 命令）
     *
     * @param database 用户新连接的数据库
     */
    public void setDatabase(String database) {
        this.database = database;
    }

    /**
     * 获取挑战认证数据
     *
     * @return 挑战认证数据
     */
    public String getToken() {
        return token;
    }

    /**
     * 获取会话建立时间
     *
     * @return 会话建立时间
     */
    public Date getConnectedTime() {
        return connectedTime;
    }

    /**
     * Session 结束后执行的相关操作
     */
    public void closeSession() {
        logger.i("Session " + sessionId + ": 正在关闭用户 " + userName + " 到底层库的连接");
        for (Connection conn : connections) {
            try {
                conn.close();
            } catch (SQLException e) {
                logger.e("Session " + sessionId + ": 关闭用户 " + userName + " 到底层库的连接失败", e);
            }
        }
        logger.i("Session " + sessionId + ": 关闭用户 " + userName + " 到底层库的连接成功");
    }
}
