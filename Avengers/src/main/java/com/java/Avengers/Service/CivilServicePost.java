package com.java.Avengers.Service;


import com.java.Avengers.Entities.CivilEntityPost;
import com.java.Avengers.Repository.CivilRepositoryPost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CivilServicePost {

    @Autowired
    private CivilRepositoryPost civilRepositoryPost;

    public CivilEntityPost addCivil(CivilEntityPost civil) {
        return civilRepositoryPost.save(civil);
    }


}
