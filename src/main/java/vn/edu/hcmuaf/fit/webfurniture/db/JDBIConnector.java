package vn.edu.hcmuaf.fit.webfurniture.db;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

import static vn.edu.hcmuaf.fit.webfurniture.db.DBProperties.*;

public class JDBIConnector {
    private static Jdbi jdbi;

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql//" + getDbHost() + ":" + getDbPort() + "/" + getUsername() + "/" + getPassword() + "/"
                + getDbName());

        dataSource.setUser(getUsername());
        dataSource.setPassword(getPassword());
        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            throw new RuntimeException(throwables);
        }
        jdbi = Jdbi.create(dataSource);
    }

    private JDBIConnector() {

    }

    public static Jdbi get() {
        if (jdbi == null) makeConnect();
        return jdbi;
    }
}
