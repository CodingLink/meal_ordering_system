package com.example.meal_ordering_system.controller;


import com.example.meal_ordering_system.entity.Menus;
import com.example.meal_ordering_system.service.MenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.*;

@RestController
public class FileController {
    @Autowired
    @Qualifier("menusService")
    private MenusService menusService;

    @RequestMapping("upload")
    public String fileUpload(CommonsMultipartFile file, Menus menus, HttpServletRequest request)throws IOException {
        menusService.insert(menus);
        //获取文件名
        String uploadFilename = file.getOriginalFilename();
        //如果文件名为空，直接返回
        if("".equals(uploadFilename)){
            return "redirect: menus_add.jsp";
        }
        System.out.println("上传文件名："+uploadFilename);
        //上传保存路径
         String path=request.getServletContext().getRealPath("/public/img");
         //如果路径不存在，新建一个
        File realPath= new File(path);
        if (!realPath.exists()){
            realPath.mkdirs();
        }
        System.out.println("上传文件保存地址："+realPath);
        //文件输入流
        InputStream is =file.getInputStream();
        //文件输出流
        OutputStream os =new FileOutputStream(new File(realPath,uploadFilename));

        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1) {
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();
        return "/admin/main";
    }
}
