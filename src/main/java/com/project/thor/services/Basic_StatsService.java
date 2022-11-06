package com.project.thor.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.thor.models.Basic_Stats;
import com.project.thor.repositories.Basic_StatsRepository;

@Service
public class Basic_StatsService {
	@Autowired
	private Basic_StatsRepository bsRepo;
	
	public Basic_Stats createBasic_Stats(Basic_Stats b) {
		return bsRepo.save(b);
	}
	
	public Basic_Stats findMostRecentBS(Long id) {
		return bsRepo.getNewestBasicStat(id);
	}
	
	public List<Basic_Stats> allBasic_Stats() {
		return bsRepo.findAll();
	}
	
	public Basic_Stats findBSById(Long id) {
		Optional<Basic_Stats> optionalBS = bsRepo.findById(id);
		if (optionalBS.isPresent()) {
			return optionalBS.get();
		} else {
			return null;
		}
	}
	
	public void deleteBasic_Stats(Long id) {
		bsRepo.deleteById(id);
	}
	
	public Basic_Stats updateBasic_Stats(Basic_Stats b) {
		return bsRepo.save(b);
	}
}
