package com.java.Avengers.Service;


import com.java.Avengers.Entities.SuperVilain;
import com.java.Avengers.Repository.VilainRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class VilainService implements IVilainService {

    @Autowired
    private VilainRepository superVilainRepository;

    @Override
    public List<SuperVilain> getAllSuperVilains() {
        return superVilainRepository.findAll();
    }


}