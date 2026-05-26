package examples.utils;

import java.io.*;
import java.nio.file.*;
import java.util.*;

public class FileUtils {

    public static void writeJson(String filePath,
                                 String content)
            throws Exception {

        Path path = Paths.get(filePath);

        // Create folder automatically
        Files.createDirectories(
                path.getParent()
        );

        Files.write(
                path,
                content.getBytes()
        );

        System.out.println("JSON created");
    }


    public static void writeCsv(String filePath,
                                List<Map<String,Object>> data)
            throws Exception {

        Path path = Paths.get(filePath);

        // Create folder automatically
        Files.createDirectories(
                path.getParent()
        );

        FileWriter writer =
                new FileWriter(filePath);

        writer.write(
                "userId,id,title,body\n"
        );

        for(Map<String,Object> row:data){

            writer.write(
                    row.get("userId")+","
                    +row.get("id")+","
                    +"\""+row.get("title")+"\","
                    +"\""+row.get("body")+"\""
            );

            writer.write("\n");
        }

        writer.close();

        System.out.println("CSV created");
    }
}