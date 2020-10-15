set.seed(1994)

org_gen <- function(n_people, 
                    n_groups, 
                    similarity_preference){
  
  data.frame(
    person_id = stringi::stri_rand_strings(n = n_people, length = 5),
    group = sample(x = c(1:n_groups), size = n_people, replace = T),
    similarity_preference
  ) %>% 
    return()
}

org_generations <- function(timepoints, N_people, SP, N_groups){
  
  old_org <- org_gen(n_people = N_people,
                     similarity_preference = SP,
                     n_groups = N_groups) %>% 
    group_by(group) %>% 
    mutate(freq = n()/nrow(.)) %>% 
    data.frame()
  
  t <- 1
  
  results <- list()
  
  results[[t]] <- old_org
  
  repeat{
    
    new_org <- old_org %>% 
      filter(freq >= similarity_preference) %>% 
      group_by(group)
    
    if(nrow(new_org) == N_people) break
    
    new_org <- new_org %>%
      rbind(., org_gen(n_people = N_people-nrow(new_org),
                       similarity_preference = SP,
                       n_groups = N_groups)) %>%
      group_by(group) %>%
      mutate(freq = n()/nrow(.)) %>%
      data.frame()
    
    t <- t + 1
    
    if(t == timepoints)  break
    
    old_org <- new_org
    
    results[[t]] <- old_org
    
  }
  
  return(results)
  
}

org_generations(timepoints = 100, N_people = 100, SP = 1/5, N_groups = 3)
