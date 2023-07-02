package com.dao;

import com.bean.Passage;
import com.bean.User;


public interface PassageDao {
    Passage getpassage(String title, String context);

    int passage(Passage passage);

}
