package com.utils;

public class URLUtil {
    static public String paramChange(String oriParam) {
        String header = null;
        String body = null;

        header = oriParam.substring(0, 2);
        body = oriParam.substring(2);

        String flag = null;
        if ("sh".equals(header)) {
            flag = "SS";
        } else if ("sz".equals(header)) {
            flag = "SZ";
        }

        String res = null;
        res = body + "." + flag;
        return res;
    }
}
