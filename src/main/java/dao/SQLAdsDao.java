package dao;
import com.mysql.cj.jdbc.Driver;
import model.Ad;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SQLAdsDao implements Ads {

    private Connection connection;
    public SQLAdsDao() {

        try {
            DriverManager.registerDriver(new Driver());
            Config config = new Config();
            Connection connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
        @Override
        public List<Ad> all() {
            List<Ad> Ads;
            try {
                Ads = new ArrayList<>();
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Ads");

                while (rs.next()) {
                    Ad ad = new Ad(rs.getString("title"), rs.getString("description"));
                    Ads.add(ad);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            return Ads;
        }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}