public class Ticket {
    private int num;
    private double prix;
    private Reservation reservation;

    Ticket(int num, double prix, Reservation reservation){
        this.num=num;
        this.prix=prix;
        this.reservation=reservation;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }
}
