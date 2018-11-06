package com.aaa.service;

import java.io.IOException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.base.BaseService;
import com.aaa.bean.Paygrantapply;

import tk.mybatis.mapper.common.Mapper;

public interface PaygrantapplyService extends BaseService<Paygrantapply>{

	void saveOfFile(Paygrantapply apply) throws IOException, InvalidFormatException ;

	void UpdateAndRemark(Paygrantapply recruit, String remark);

}
