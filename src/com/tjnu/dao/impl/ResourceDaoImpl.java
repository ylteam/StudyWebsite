package com.tjnu.dao.impl;

import org.springframework.stereotype.Repository;

import com.tjnu.dao.IResourceDao;
import com.tjnu.model.ResourceInfo;

@Repository("resourceDao")
public class ResourceDaoImpl extends BaseDaoImpl<ResourceInfo> implements IResourceDao {

}
