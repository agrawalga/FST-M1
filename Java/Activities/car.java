package activities;

public class car {
    String colour;
    int make;
    String transmission;
    int tyres;
    int doors;

    car() {
        tyres = 4;
        doors = 4;
    }
        public void Characteristics ()
        {
            System.out.println("Color of Car: " + colour);
            System.out.println("Make year ofCar: " + make);
            System.out.println("Transmission of the Car: " + transmission);
            System.out.println("Number of doors in car: " + doors);
            System.out.println("Number of tyres in car: " + tyres);
        }
        public void accelerate () {
            System.out.println("Car is moving forward.");
        }

        public void brake ()
        {
            System.out.println("Car has stopped.");
        }
    }
