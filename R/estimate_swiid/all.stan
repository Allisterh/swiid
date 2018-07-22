data{
  int<lower=1> K;     		                // number of countries
  int<lower=1> T;     		                // (maximum) number of years
  int<lower=1> KT;                        // number of observed & interpolated country-years
  int<lower=1> R;                         // number of regions
  int<lower=1> S; 				                // number of series (in countries with baseline)
  int<lower=1> WE;                        // number of combos of welfare def and eq scale ("wd_es")
  int<lower=1> KWE;                       // number of combos of country and wd_es
  int<lower=1> RWE;                       // number of combos of region and wd_es
  int<lower=1> KW;                        // number of combos of country and welfare definition
  int<lower=1> W;                         // number of welfare definitions
  int<lower=1> E;                         // number of equivalence scales

  int<lower=1> N;                         // total number of obs
  int<lower=1> N_ibl;                     // number of baseline obs ("is baseline")
  int<lower=1> N_bl;                      // number of obs with baseline
  int<lower=1> N_obl;                     // number of obs in series with some baseline ("overlap baseline")
  int<lower=1> N_bk;                      // number of obs in countries with some baseline data ("baseline countries")
  int<lower=1> N_kw;                      // number of obs with in-country ratios to baseline welfare_def 

  int<lower=1, upper=K> kk[N]; 	          // country for observation n
  int<lower=1, upper=T> tt[N]; 	          // year for observation n
  int<lower=1, upper=KT> kktt[N];         // country-year for observation n
  int<lower=1, upper=T> kn[K];            // number of observed & interpolated country-years by country
  int<lower=1, upper=KT> kt1[K];          // location of first kt for country k
  int<lower=1, upper=R> kr[K];            // region for country k
  int<lower=1, upper=R> rr[N];            // region for observation n
  int<lower=1, upper=S> ss[N];            // series for observation n
  int<lower=1, upper=WE> wen[N];          // wd_es for observation n
  int<lower=1, upper=KWE> kwen[N];        // country-wd_es for observation n
  int<lower=0, upper=KW> kwn[N];          // kw for observation n
  int<lower=1, upper=RWE> rwen[N];        // rwe for region-welfare_def-equiv_sc of observation n
  int<lower=1, upper=RWE> rwen2[N];       // rwe for region-*baseline_wd*-equiv_sc of observation n
  
  vector<lower=0, upper=1>[N] gini_m; 	  // measured gini for observation n
  vector<lower=0, upper=1>[N] gini_m_se;  // std error of measured gini for obs n
  vector<lower=0, upper=1>[N_bl] gini_b;  // baseline gini for obs n
  vector<lower=0, upper=1>[N_bl] gini_b_se; // std error of baseline gini for obs n
  
  int<lower=1> M;                         // number of observed ratios of baseline to wd_es (rho_we)
  int<lower=1, upper=K> kkm[M]; 	        // country for rho_we observation m
  int<lower=1, upper=R> rrm[M];           // region for rho_we observation m
  int<lower=1, upper=WE> wem[M];          // wd_es for rho_we observation m
  int<lower=1, upper=KWE> kwem[M];        // country-wd_es for rho_we observation m
  int<lower=1, upper=RWE> rwem[M];        // region-wd_es for rho_we observation m
  real<lower=0> rho_we[M];                // observed ratio of baseline to wd_es
  real<lower=0> rho_we_se[M];             // std error of rho_we
  
  int<lower=0, upper=KWE> disp_KWE;                   // number of disp KWE
  int<lower=0, upper=KWE> disp_idx_KWE[disp_KWE];     // index positions of disp KWE 
  int<lower=0, upper=KWE> con_KWE;                    // number of con KWE
  int<lower=0, upper=KWE> con_idx_KWE[con_KWE];       // index positions of con KWE
  int<lower=0, upper=KWE> gross_KWE;                  // number of gross KWE
  int<lower=0, upper=KWE> gross_idx_KWE[gross_KWE];   // index positions of gross KWE
  int<lower=0, upper=KWE> market_KWE;                 // number of market KWE
  int<lower=0, upper=KWE> market_idx_KWE[market_KWE]; // index positions of market KWE
  
  int<lower=0, upper=RWE> disp_RWE;                   // number of disp RWE
  int<lower=0, upper=RWE> disp_idx_RWE[disp_RWE];     // index positions of disp RWE 
  int<lower=0, upper=RWE> con_RWE;                    // number of con RWE
  int<lower=0, upper=RWE> con_idx_RWE[con_RWE];       // index positions of con RWE
  int<lower=0, upper=RWE> gross_RWE;                  // number of gross RWE
  int<lower=0, upper=RWE> gross_idx_RWE[gross_RWE];   // index positions of gross RWE
  int<lower=0, upper=RWE> market_RWE;                 // number of market RWE
  int<lower=0, upper=RWE> market_idx_RWE[market_RWE]; // index positions of market RWE
  
  int<lower=1> P;                         // number of observed ratios of baseline_wd to wd (rho_w)
  int<lower=1, upper=K> kkp[P]; 	        // country for rho_w observation p
  int<lower=1, upper=R> rrp[P];           // region for rho_w observation p
  int<lower=1, upper=KW> kwp[P];          // kw for rho_w observation p
  real<lower=0> rho_w[P];                 // observed ratio of baseline_wd to wd
  real<lower=0> rho_w_se[P];              // std error of rho_w

  int<lower=0, upper=KW> disp_KW;                   // number of disp KW
  int<lower=0, upper=KW> disp_idx_KW[disp_KW];     // index positions of disp KW 
  int<lower=0, upper=KW> con_KW;                    // number of con KW
  int<lower=0, upper=KW> con_idx_KW[con_KW];       // index positions of con KW
  int<lower=0, upper=KW> gross_KW;                  // number of gross KW
  int<lower=0, upper=KW> gross_idx_KW[gross_KW];   // index positions of gross KW
  int<lower=0, upper=KW> market_KW;                 // number of market KW
  int<lower=0, upper=KW> market_idx_KW[market_KW]; // index positions of market KW
}
  
parameters {
  real<lower=0, upper=1> gini[KT];        // SWIID gini estimate for baseline in country k at time t
  real<lower=0> sigma_gini; 	            // random-walk variance parameter
  vector[N] gini_t;                       // unknown "true" gini given gini_m and gini_m_se
  vector[M] rho_we_t;                     // unknown "true" rho_we given rho_we and rho_we_se
  vector[P] rho_w_t;                      // unknown "true" rho_wd given rho_w and rho_w_se
  
  vector<lower=0>[S] rho_s;               // ratio of baseline to series s
  real<lower=0> sigma_s; 	                // series noise 
  
  vector<lower=0>[KWE] rho_kwe_hat;       // estimated rho_we by country
  real<lower=0> sigma_kwe;                // rho_kwe_hat noise
  
  vector<lower=0>[KW] rho_kw_hat;         // estimated rho_w by country
  real<lower=0> sigma_kw;                 // rho_kw_hat noise
  
  vector<lower=0>[RWE] rho_rwe_hat;       // estimated rho_we by region
  real<lower=0> sigma_rwe[R];             // rho_rwe_hat noise (by region)
}

transformed parameters {
  real<lower=0> sigma_krcat[R];
  real<lower=0> sigma_rrcat[R];
  
  for (r in 1:R) {
    sigma_krcat[r] = sqrt(square(sigma_kw) + square(sigma_rwe[r])); 
    sigma_rrcat[r] = sqrt(2 * square(sigma_rwe[r])); 
  }
}

model {
  sigma_gini ~ normal(.01, .0025);
  sigma_s ~ normal(0, .05);
  sigma_kwe ~ normal(0, .05);
  for (r in 1:R) {
    sigma_rwe[r] ~ normal(.04, .015) T[0,];
  }
  sigma_kw ~ normal(0, .01);

  rho_s ~ normal(1, .2);
  rho_kwe_hat[disp_idx_KWE] ~ normal(1, .05);         // disp
  rho_kwe_hat[con_idx_KWE] ~ lognormal(.1, .15);      // con
  rho_kwe_hat[gross_idx_KWE] ~ lognormal(-.1, .1);    // gross
  rho_kwe_hat[market_idx_KWE] ~ lognormal(-.5, .15);  // market

  rho_rwe_hat[disp_idx_RWE] ~ normal(1, .05);         // disp
  rho_rwe_hat[con_idx_RWE] ~ lognormal(.1, .15);      // con
  rho_rwe_hat[gross_idx_RWE] ~ lognormal(-.1, .1);    // gross
  rho_rwe_hat[market_idx_RWE] ~ lognormal(-.5, .15);  // market

  rho_kw_hat[disp_idx_KW] ~ normal(1, .05);           // disp
  rho_kw_hat[con_idx_KW] ~ lognormal(.1, .15);        // con
  rho_kw_hat[gross_idx_KW] ~ lognormal(-.1, .1);      // gross
  rho_kw_hat[market_idx_KW] ~ lognormal(-.5, .15);    // market

  gini_m ~ normal(gini_t, gini_m_se);
  rho_we ~ normal(rho_we_t, rho_we_se);
  rho_w ~ normal(rho_w_t, rho_w_se);
  
  for (k in 1:K) {
    if (kn[k] > 1) {
      gini[kt1[k]] ~ normal(.35, .125);                         // a random draw from N() in first year
      gini[(kt1[k]+1):(kt1[k]+kn[k]-1)] ~ normal(gini[(kt1[k]):(kt1[k]+kn[k]-2)], sigma_gini); // otherwise a random walk from previous year 
    } else {
      gini[kt1[k]] ~ normal(.35, .125);                         // a random draw from N()
    }
  }
  
  gini_b[N_ibl+1:N_bl] ~ normal(rho_s[ss[N_ibl+1:N_bl]] .* gini_t[N_ibl+1:N_bl], sigma_s); // estimate rho_s for obs with baseline
  rho_kwe_hat[kwem] ~ normal(rho_we_t, sigma_kwe); // estimate rho_kwe_hat (over 1:M)
  rho_rwe_hat[rwem] ~ normal(rho_we_t, sigma_rwe[rrm]); // estimate rho_rwe_hat (over 1:M)
  rho_kw_hat[kwp] ~ normal(rho_w_t, sigma_kw);     // estimate rho_kw_hat (over 1:P)

  // obs w/ baseline use baseline
  gini[kktt[1:N_ibl]] ~ normal(gini_b[1:N_ibl], gini_b_se[1:N_ibl]); 
  
  // obs in countries w/ baseline in series w/ overlap use rho_s
  gini[kktt[(N_bl+1):N_obl]] ~ normal(gini_t[(N_bl+1):N_obl] .* rho_s[ss[(N_bl+1):N_obl]], sigma_s); 
  
  // obs in countries w/ baseline in series w/o overlap use rho_kwe_hat
  gini[kktt[(N_obl+1):N_bk]] ~ normal(rho_kwe_hat[kwen[(N_obl+1):N_bk]] .* gini_t[(N_obl+1):N_bk], sigma_kwe);
  
  // obs in countries w/o baseline but w/ rho_w use rho_kw_hat for wd adj and then rho_rwe_hat for es adj
  gini[kktt[N_bk:N_kw]] ~ normal(rho_kw_hat[kwn[N_bk:N_kw]] .* rho_rwe_hat[rwen2[N_bk:N_kw]] .* gini_t[N_bk:N_kw], sigma_krcat[rr[N_bk:N_kw]]);

  // obs in countries w/o rho_w use one-step estimates from rho_rwe_hat
  gini[kktt[(N_kw+1):N]] ~ normal(rho_rwe_hat[rwen[(N_kw+1):N]] .* gini_t[(N_kw+1):N], sigma_rrcat[rr[(N_kw+1):N]]);

}
