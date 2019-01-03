package com.zking.ssm.mapper;

import com.zking.ssm.model.Contact;

public interface ContactMapper {
    int deleteByPrimaryKey(String id);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);
}