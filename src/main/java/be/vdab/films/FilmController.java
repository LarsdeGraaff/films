package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by jeansmits on 25/06/15.
 */
@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;


    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
        return "hello world";
    }


    @RequestMapping("/films")
    @ResponseBody
    public String films(){
        return filmRepository.findAll().toString();
    }
}
