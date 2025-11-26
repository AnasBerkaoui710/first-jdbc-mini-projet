import java.sql.*;

public class Main {
    public static void main(String[] args) {

        String url = "jdbc:mysql://localhost:3306/cinema";
        String username = "root";
        String password = "#Angelo20042004";

        try {

            //conection to the database
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("conected succefully");


            //insert elements to the film table
            String sql = "INSERT INTO film(titre, duree, categorie) VALUES(inception, 3, science fiction)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "inception");
            ps.setInt(2, 3);
            ps.setString(3, "science fiction");

           ps.executeUpdate();
            System.out.println("Data inserted!");




        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
