package appstart.mymodappdemo;

import appfuncs.simplefuncs.SimpleMathFuncs;

public class MyModAppDemo {
    public static void main(String[] args) {
        if (SimpleMathFuncs.isFactor(2, 10)) {
            System.out.println("2 is a factor of 10.");
        }

        System.out.println("The smallest common factor of 35 and 105 is " +
                SimpleMathFuncs.lcf(35, 105));

        System.out.println("The greatest common factor of 35 and 105 is " +
                SimpleMathFuncs.gcf(35, 105));
    }
}