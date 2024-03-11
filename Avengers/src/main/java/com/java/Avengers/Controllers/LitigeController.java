package com.java.Avengers.Controllers;

import com.java.Avengers.Entities.Litige;
import com.java.Avengers.Service.LitigeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/litiges")
public class LitigeController {

    @Autowired
    private LitigeService litigeService;

    @GetMapping
    public List<Litige> getAllLitiges() {
        return litigeService.getAllLitiges();
    }
}
