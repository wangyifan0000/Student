package com.kgc.tcmp077.wangyf.service.impl;

import com.kgc.tcmp077.wangyf.entity.StudentInfo;
import com.kgc.tcmp077.wangyf.mapper.StudentInfoMapper;
import com.kgc.tcmp077.wangyf.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author wangyf
 * @create 2020-10-05 22:59
 */
@Service("StudentService")
public class StudentServiceImpl implements StudentService {
    @Resource
    StudentInfoMapper studentInfoMapper;

    @Override
    public List<StudentInfo> selectList() {
        List<StudentInfo> studentInfos = studentInfoMapper.selectByExample(null);
        return studentInfos;
    }

    @Override
    public StudentInfo selectById(int id) {
        StudentInfo studentInfo = studentInfoMapper.selectByPrimaryKey(id);
        return studentInfo;
    }

    @Override
    public int updateStudentInfo(StudentInfo StudentInfo) {
        int i = studentInfoMapper.updateByPrimaryKeySelective(StudentInfo);
        return i;
    }
}
