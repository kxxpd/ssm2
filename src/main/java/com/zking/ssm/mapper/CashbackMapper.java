package com.zking.ssm.mapper;

import com.zking.ssm.model.Cashback;

public interface CashbackMapper {
    int deleteByPrimaryKey(String id);

    int insert(Cashback record);

    int insertSelective(Cashback record);

    Cashback selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Cashback record);

    int updateByPrimaryKey(Cashback record);
}