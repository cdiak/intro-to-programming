Describe what happens when you write sqrt instead of Math.sqrt in:

```java
public class Quadratic {
    public static void main(String[] args) {
        double b = Double.parseDouble(args[0]);
        double c = Double.parseDouble(args[1]);
        double discriminant = b*b - 4.0*c;
        double d = Math.sqrt(discriminant);
        System.out.println((-b+d)/2.0);
        System.out.println((-b-d)/2.0);
    }
}
```

The method sqrt(double) is undefined for the type Quadratic. 