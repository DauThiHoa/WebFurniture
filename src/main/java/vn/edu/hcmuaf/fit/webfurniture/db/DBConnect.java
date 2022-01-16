package vn.edu.hcmuaf.fit.webfurniture.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {
    private static DBConnect instance;
    private static Connection connection;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/webfurniture";
    private static final String USER = "root";
    private static final String PASS = "";

    public DBConnect() {
    }


    public static DBConnect getInstance() {
        if (instance == null) {
            instance = new DBConnect();
        }
        return instance;
    }

    private void connect() throws SQLException, ClassNotFoundException {
        if (connection == null || connection.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL, USER, PASS);
        }
    }

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(DB_URL, USER, PASS);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public Statement get() {
        try {
            connect();
            return connection.createStatement();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

}
