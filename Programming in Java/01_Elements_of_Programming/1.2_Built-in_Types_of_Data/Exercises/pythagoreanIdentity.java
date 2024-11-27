// Exercise 1.2.2

public class pythagoreanIdentity {
    public static void main(String[] args) {
        double theta = Double.parseDouble(args[0]);
        double pythagoreanIdentity =
            Math.cos(theta)*Math.cos(theta) 
            + Math.sin(theta)*Math.sin(theta);
        System.out.println(pythagoreanIdentity);
    }
}
