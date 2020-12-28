package com.cykj.service.Impl;

import com.cykj.bean.FileUpload;
import com.cykj.mapper.FileUploadMapper;
import com.cykj.service.FileUpLoadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileUpLoadServiceImpl implements FileUpLoadService {
    @Autowired
    private FileUploadMapper fileUploadMapper;
    @Override
    public int insertTable(FileUpload fileUpload) {
        int flag=fileUploadMapper.insertTable(fileUpload);
        return flag;
    }
}
