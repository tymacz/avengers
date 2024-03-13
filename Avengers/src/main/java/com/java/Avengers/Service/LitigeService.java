package com.java.Avengers.Service;


import com.java.Avengers.Entities.Litige;
import com.java.Avengers.Repository.LitigeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LitigeService implements ILitigeService {

    @Autowired
    private LitigeRepository LitigeRepository;

    @Override
    public List<Litige> getAllLitiges() {
        return LitigeRepository.findAll();
    }


}
