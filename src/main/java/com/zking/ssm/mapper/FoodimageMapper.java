package com.zking.ssm.mapper;

import com.zking.ssm.model.Foodimage;

public interface FoodimageMapper {
    int deleteByPrimaryKey(String id);

    int insert(Foodimage record);

    int insertSelective(Foodimage record);

    Foodimage selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Foodimage record);

    int updateByPrimaryKey(Foodimage record);
}