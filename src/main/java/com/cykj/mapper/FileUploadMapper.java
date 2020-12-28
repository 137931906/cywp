package com.cykj.mapper;

import com.cykj.bean.FileUpload;
import org.springframework.stereotype.Repository;

@Repository
public interface FileUploadMapper {
    public int insertTable(FileUpload fileUpload);
}
