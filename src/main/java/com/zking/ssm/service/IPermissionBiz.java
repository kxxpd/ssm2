package com.zking.ssm.service;

import com.zking.ssm.model.Permission;

public interface IPermissionBiz {
    int add(Permission permission);
    int del(Permission permission);
}
