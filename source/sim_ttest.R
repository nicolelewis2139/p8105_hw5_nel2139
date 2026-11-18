sim_ttest = function(n_obs = 30, mu, sigma = 5) {
  
  sim_df = 
    tibble(
      x = rnorm(n = n_obs, mean = mu, sd = sigma)
    )
  
  ttest = t.test(x ~ 1, data = sim_df, mu = 0)
  
  return_df = 
    broom::tidy(ttest) |> 
    select(mu_hat = estimate, p_value = p.value)
  
  return(return_df)
}
