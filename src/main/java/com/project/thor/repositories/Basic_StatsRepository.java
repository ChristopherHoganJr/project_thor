package com.project.thor.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.project.thor.models.Basic_Stats;

public interface Basic_StatsRepository extends CrudRepository<Basic_Stats, Long> {

	List<Basic_Stats> findAll();
	
	@Query(value = "SELECT * FROM basic_stats WHERE user_id = ?1 ORDER BY id DESC LIMIT 1", nativeQuery=true)
	Basic_Stats getNewestBasicStat(Long user_id);
}
