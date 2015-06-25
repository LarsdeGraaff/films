package be.vdab.films;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by jeansmits on 25/06/15.
 */
public interface FilmRepository extends JpaRepository<Film, Integer>{
}
