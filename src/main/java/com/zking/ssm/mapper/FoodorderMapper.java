package com.zking.ssm.mapper;

import com.zking.ssm.model.Foodorder;

public interface FoodorderMapper {
    int deleteByPrimaryKey(String id);

    int insert(Foodorder record);

    int insertSelective(Foodorder record);

    Foodorder selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Foodorder record);

    int updateByPrimaryKey(Foodorder record);
}