import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class ListAdsDao implements Ads {
//    private List<Ad> ads;
//
//    public List<Ad> all() {
//        if (ads == null) {
//            ads = generateAds();
//        }
//        return ads;
//    }
//
//    public Ad insert(Ad ad) {
//        // make sure we have ads
//        if (ads == null) {
//            ads = generateAds();
//        }
//        // we'll assign an "id" here based on the size of the ads list
//        // really the database would handle this
//        ad.setId((long) ads.size());
//        ads.add(ad);
//        return ad.getId();
//    }
//
//    private List<Ad> generateAds() {
//        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//                1,
//                1,
//                "playstation for sale",
//                "This is a slightly used playstation"
//        ));
//        ads.add(new Ad(
//                2,
//                1,
//                "Super Nintendo",
//                "Get your game on with this old-school classic!"
//        ));
//        ads.add(new Ad(
//                3,
//                2,
//                "Junior Java Developer Position",
//                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
//        ));
//        ads.add(new Ad(
//                4,
//                2,
//                "JavaScript Developer needed",
//                "Must have strong Java skills"
//        ));
////        Config config = new Config();
////        try {
////            Connection connection = DriverManager.getConnection(
////                    config.getUrl(),
////                    config.getUsername(),
////                    config.getPassword()
////            );
////            Statement statement = connection.createStatement();
////            ResultSet resultset = statement.executeQuery("select * from adlister_db");
////            while(resultset.next()) {
////                ads.add(new Ad(resultset.getLong("id"), resultset.getString("title"), resultset.getString("description")));
////            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////        return ads;
////    }
//    }
