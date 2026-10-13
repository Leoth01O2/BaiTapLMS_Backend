package com.codegym;

public class QuadraticEquation {
    public static double delta(double a, double b, double c) {
        return b * b - 4 * a * c;
    }

    public static double[] solve(double a, double b, double c) {
        if (a == 0) {
            if (b == 0) {
                return new double[0];
            }
            return new double[]{-c / b};
        }

        double d = delta(a, b, c);
        if (d < 0) {
            return new double[0];
        }
        if (d == 0) {
            return new double[]{-b / (2 * a)};
        }

        double sqrtD = Math.sqrt(d);
        double x1 = (-b + sqrtD) / (2 * a);
        double x2 = (-b - sqrtD) / (2 * a);
        return new double[]{x1, x2};
    }
}
