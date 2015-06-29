package be.vdab.films;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by jeansmits on 25/06/15.
 */
@Controller
public class FilmController {
    @Autowired
    FilmRepository filmRepository;


    @RequestMapping("/index")
    public String index(){
        return "home";
    }


    @RequestMapping("/films")
    public String films(Map<String,Object>model){
        model.put("films", filmRepository.findAll());
        return "list";
    }
    @RequestMapping("/film")
    public String film (Map<String, Object> model, @RequestParam("id") int filmId){
        model.put("film", filmRepository.findOne(filmId));
        return "details";
    }

    @RequestMapping("/form")
    public String form (Map<String, Object> model){
        model.put("film", new Film());
        return "form";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(Film film){
        filmRepository.save(film);
        return "redirect:/films";
    }

}
