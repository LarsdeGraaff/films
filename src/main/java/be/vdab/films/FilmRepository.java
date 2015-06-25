package be.vdab.films;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by jeansmits on 25/06/15.
 */
@Repository
public interface FilmRepository extends JpaRepository<Film, Integer>{
}
