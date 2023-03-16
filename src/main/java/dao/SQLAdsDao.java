package dao;

import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLAdsDao {
          try {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );
    } catch (
    SQLException e) {
        throw new RuntimeException(e);
    }
}
}
