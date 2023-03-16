package dao;
import com.mysql.cj.jdbc.Driver;
import model.Ad;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;
    private List<Ad> Ads;

    public MySQLAdsDao() {

        try {
            DriverManager.registerDriver(new Driver());
            Config config = new Config();
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true",
                    "root",
                    "codeup"
            );
//                    config.getUrl(),
//                    config.getUser(),
//                    config.getPassword()

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
            List<Ad> Ads = new ArrayList<>();
        try {

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Ads");

            while (rs.next()) {
                Ad ad = new Ad(rs.getString("title"), rs.getString("description"));
                Ads.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Ads;
    }
}

//    public void insert(Ad ad) {
//        // make sure we have ads
//        if (Ads == null) {
//            Ads = generateAds();
//        }
//        // we'll assign an "id" here based on the size of the ads list
//        // really the database would handle this
//        ad.setId((long) Ads.size());
//        Ads.add(ad);
//        return ad.getId();
//    }