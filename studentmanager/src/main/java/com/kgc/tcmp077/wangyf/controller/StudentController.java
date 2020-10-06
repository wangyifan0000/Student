package com.kgc.tcmp077.wangyf.controller;

import com.kgc.tcmp077.wangyf.entity.StudentInfo;
import com.kgc.tcmp077.wangyf.service.impl.StudentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-05 23:02
 */
@Controller
public class StudentController {
    @Resource
    StudentServiceImpl studentService;
    @RequestMapping("/")
    public String toselectList(Model model){
        List<StudentInfo> studentInfos = studentService.selectList();
        model.addAttribute("list",studentInfos);
        return "main";
    }

    @RequestMapping("/showStudentInfo/{id}")
    public String toshowStudentInfo(Model model,@PathVariable("id") int  id){
        StudentInfo studentInfo = studentService.selectById(id);
        model.addAttribute("studentInfo",studentInfo);
        return "doUpdate";
    }
    @RequestMapping("/doupdateStudentInfo")
    public String doupdateStudentInfo(Model model,String sname,String saddress,int sage,String sgender,String semail,int sid){
        StudentInfo studentInfo = new StudentInfo();
        studentInfo.setSid(sid);
        studentInfo.setSaddress(saddress);
        studentInfo.setSage(sage);
        studentInfo.setSemail(semail);
        studentInfo.setSgender(sgender);
        studentInfo.setSname(sname);
        int i = studentService.updateStudentInfo(studentInfo);
        if(i>0){
            model.addAttribute("success","更新成功");
        }else{
            model.addAttribute("fail","更新失败");
        }
        return "redirect:";
    }
}
