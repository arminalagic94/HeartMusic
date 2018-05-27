package baza.konekcija;

public class mysql {
    public static String HOST = "localhost";
    public static int PORT = 3306;
    public static String DB_NAME = "heart_music";
    public static String DB_USER = "root";
    public static String DB_PASSWORD = "";

    public static String DB_URL = "jdbc:mysql://" + HOST + ":" + PORT + "/" + DB_NAME;
}
