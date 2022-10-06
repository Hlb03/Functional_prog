package functions;
/*
  User: admin
  Cur_date: 28.09.2022
  Cur_time: 13:21
*/

import functions.util.Functions;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

public class Main {
    public static void main(String[] args) {
        Random random = new Random();

        List<Object> list = Functions.singleton(new Object());
        System.out.println(list);

        List<Integer> lst = new ArrayList<>();
        for (int i = 0; i < random.nextInt(20); i++) {
            lst.add(random.nextInt(100));
        }

        System.out.println(Functions.emptyNull(new ArrayList<>()));
        System.out.println(Functions.snoc(lst, 11));
        System.out.println(Functions.length(lst));
    }
}