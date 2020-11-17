package com.utils;

import java.util.Date;
import java.util.HashMap;

public class TimeUtil {
    static long oneYear = 365 * 24 * 60 * 60;
    public static HashMap<String, String> getTimeAsString() {
        HashMap<String, String> times = new HashMap<>();

        long curTime = new Date().getTime() / 1000;
        //System.out.println("cur: " + curTime);
        long oneYearBefore = curTime - oneYear;
        times.put("period1", oneYearBefore+"");
        times.put("period2", curTime+"");

        return times;
    }
}
