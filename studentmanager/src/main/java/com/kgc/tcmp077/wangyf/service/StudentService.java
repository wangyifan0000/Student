package com.kgc.tcmp077.wangyf.service;

import com.kgc.tcmp077.wangyf.entity.StudentInfo;

import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-05 22:57
 */
public interface StudentService {
    List<StudentInfo> selectList();
    StudentInfo selectById(int id);
    int updateStudentInfo(StudentInfo StudentInfo);
}
