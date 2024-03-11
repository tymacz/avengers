package com.java.Avengers.Service;
import com.java.Avengers.Entities.Mission;
import com.java.Avengers.Repository.MissionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class MissionService implements IMissionService {

    @Autowired
    private MissionRepository MissionRepository;

    @Override
    public List<Mission> getAllMissions() {
        return MissionRepository.findAll();
    }


}
