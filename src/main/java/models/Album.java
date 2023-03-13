package models;

import java.io.Serializable;

public class Album implements Serializable {
    private String artist;
    private String name;
    private String genre;
    private int id;
    private int release_date;
    private double sales;
public Album(){}
    public Album(String artist, String name, String genre, int release_date, double sales) {
        this.artist = artist;
        this.name = name;
        this.genre = genre;
        this.release_date = release_date;
        this.sales = sales;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setRelease_date(int release_date) {
        this.release_date = release_date;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getArtist() {
        return artist;
    }

    public String getName() {
        return name;
    }

    public String getGenre() {
        return genre;
    }

    public int getId() {
        return id;
    }

    public int getRelease_date() {
        return release_date;
    }

    public double getSales() {
        return sales;
    }
}
