package org.liveshow.service;

import org.liveshow.dto.Show;
import org.liveshow.entity.CombinationEntity.RecommendModulAndInfo;
import org.liveshow.entity.Module;

import java.util.List;

import org.liveshow.entity.RecommendModule;


/**
 * Created by Cjn on 2017/11/28.
 */
public interface RecommendModuleService {


    /**
     * 处理推荐模块提交的表单
     *
     * @param id
     * @param moduleId
     * @return
     */
    Show handleRecommendModule(int id, String moduleId);

    /**
     * 获取当前所存储的推荐模块
     *
     * @return
     */
    Show getAllRecommendModule();


    List<RecommendModulAndInfo> findRecoModul();

}
