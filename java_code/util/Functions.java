package functions.util;
/*
  User: admin
  Cur_date: 28.09.2022
  Cur_time: 13:21
*/

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Functions {

    public static <T> List<T> singleton(T t) {
        return Collections.singletonList(t);
    }

    public static <T> boolean emptyNull(List<T> list) {
        return list.size() == 0;
    }

    public static <T> List<T> snoc(List<T> list, T o) {
//        System.out.println(list.getClass());
        list.add(o);
        return new ArrayList<>(list);
    }

    public static <T> int length(List<T> list) {
        int size = 0;

        for (T ignored : list)
            size++;

        return size;
    }
}
