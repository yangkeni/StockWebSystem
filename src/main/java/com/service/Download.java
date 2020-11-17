package com.service;

import com.utils.DownloadUtil;

import java.io.File;

public class Download {
    public void downloadCSV(String url, String name) throws Exception {
        //拼接文件存储路径
        String fileRoot = System.getProperty("rootpath");
        String fileLocation = fileRoot + "data\\" + name + ".csv";
        //查看是否存在文件
        File file = new File(fileLocation);
        File fileParent = file.getParentFile();
        if (!fileParent.exists()) {
            fileParent.mkdirs();
        }
        if (!file.exists()) {
            file.createNewFile();
        }
        //下载
        boolean flag = DownloadUtil.downloadFile(url, fileLocation);
        if (!flag) {
            System.out.println("download fail");
        } else {
            System.out.println("download succeed");
            //执行python脚本转换csv格式
            String src = fileLocation;
            String des = fileRoot + "data\\A" + name + ".csv";
            String pythonFile = fileRoot + "python\\reverse.py";
            System.out.println(pythonFile);
            System.out.println(src);
            System.out.println(des);
            String[] args = {"python", pythonFile, src, des};
            Process proc = Runtime.getRuntime().exec(args);// 执行py文件
            System.out.println(proc);
            //proc.waitFor();
        }
    }
}
