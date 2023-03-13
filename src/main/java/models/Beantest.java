package models;

import java.util.ArrayList;
import java.util.List;
public class Beantest {
    public ArrayList<Album> albums;

    public static void main(String[] args) {
        Album thriller = new Album("Michael Jackson", "Thriller", "Pop", 1982, 66.00);
        Album billieJean = new Album("Michael Jackson", "Billie Jean", "Pop", 1984, 88.09);

        ArrayList<Album> albums = new ArrayList<>(List.of(thriller, billieJean));
        for (Album album : albums) {
            System.out.println(album.getName() + " sold " + album.getSales() + " million copies");
        }
    }
}
