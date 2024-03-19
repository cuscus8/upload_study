package com.nhn.corn.controller;

import com.google.gson.JsonObject;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public String home() {
        return "home";
    }
    @RequestMapping("/write")
    public String write(){
        return "/review/reviewWrite";
    }

    @RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
    @ResponseBody
    public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
        JsonObject jsonObject = new JsonObject();

        /*
         * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
         */

        // 내부경로로 저장

        String fileRoot = "D:\\intelij_workspace\\HomeSpring_MVC\\src\\main\\webapp\\resources\\fileupload\\";
        System.out.println("fileRoot : "+fileRoot);
        String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
        String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
        String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명

        File targetFile = new File(fileRoot + savedFileName);
        try {
            InputStream fileStream = multipartFile.getInputStream();
            FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장

            jsonObject.addProperty("url", "/HomeSpring_MVC_war_exploded/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
            jsonObject.addProperty("responseCode", "success");

        } catch (IOException e) {
            FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
            jsonObject.addProperty("responseCode", "error");
            e.printStackTrace();
        }
        String a = jsonObject.toString();
        return a;
    }
}
