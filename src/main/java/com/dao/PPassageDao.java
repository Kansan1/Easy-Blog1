package com.dao;
import com.bean.Passage;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;


@Repository
public class PPassageDao {


    public static Map<Integer, Passage> passageMap = null;

    static{
        passageMap = new HashMap<Integer, Passage>();
    }
    private static Integer initId = 1;

//  实现添加/保存/修改功能
    public void save(Passage passage){
        if(passage.getId() == null){
            passage.setId(initId++);
        }
        passageMap.put(passage.getId(), passage);
    }

//    查询员工信息
    public Collection<Passage> getAll(){
        return passageMap.values();
    }

    public Passage get(Integer id){
        return passageMap.get(id);
    }


}
