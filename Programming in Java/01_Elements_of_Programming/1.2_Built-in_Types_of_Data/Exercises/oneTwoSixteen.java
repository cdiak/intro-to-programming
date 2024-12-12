public class oneTwoSixteen {
    public static void main(String[] args) {
        double G = 6.67430e-11;
        double mass1 = Double.parseDouble(args[0]);
        double mass2 = Double.parseDouble(args[1]);
        double r = Double.parseDouble(args[2]);
        double force = (G * mass1 * mass2)/(r*r);
        System.out.println(force);
    }
}

// the problem with the original code was that it lacked 
// parentheses around r*r, so the code was = G*mass1*mass2
// irrespective of distance.