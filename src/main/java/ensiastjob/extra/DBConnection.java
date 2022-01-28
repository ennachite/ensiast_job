package ensiastjob.extra;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public static String url;
    public static String dataBaseHost = Strings.DB_HOST;
    public static String dataBasePort = Strings.DB_PORT;
    public static String dataBaseName = Strings.DB_NAME;
    public static String dataBaseUser = Strings.DB_USER;
    public static String dataBasePassword = Strings.DB_PASSWORD;

    public static Connection connection;
    String query;


    /**
     * Returns the connection to our database
     *
     * @return connection
     */
    public static Connection getConnected() {
        try {
            url = "jdbc:mysql://" + dataBaseHost + ":" + dataBasePort + "/" + dataBaseName;

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, dataBaseUser, dataBasePassword);
        } catch (Exception e) {
            System.out.println("Connection failed : " + e);
            return null;
        }

        return connection;
    }

    /**
     * Allows disconnecting from the database
     */
    public static void releaseConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
