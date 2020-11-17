package com.service;

import com.utils.TimeUtil;
import com.utils.URLUtil;

import java.util.HashMap;

public class URLTransform {
    static String baseUrl = "https://query1.finance.yahoo.com/v7/finance/download/";
    static String baseParam = "&interval=1d&events=history";
    /**
     * 修改url
     * @param param
     * @return
     */
    public String transform(String param) {
        HashMap<String, String> times = TimeUtil.getTimeAsString();
        String stokeCode = URLUtil.paramChange(param);
        String timeTag = "?";
        timeTag = timeTag + "period1=" + times.get("period1") + "&period2=" + times.get("period2");
        String url = baseUrl + stokeCode + timeTag + baseParam;
        return url;
    }
}
