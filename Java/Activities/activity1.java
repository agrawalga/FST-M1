package activities;

public class activity1 {
    public static void main(String[] args) {
        car c = new car();
        c.make = 2000;
        c.colour = "Black";
        c.transmission = "Automatic";

        c.Characteristics();
        c.accelerate();
        c.brake();
    }
}
