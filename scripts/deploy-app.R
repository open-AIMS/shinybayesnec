# install latest bayesnec dev version
remotes::install_github("open-aims/bayesnec")

# deploy to open-aims test site
rsconnect::deployApp(account = "open-aims", appName = "shinybayesnec_test", 
                     forceUpdate = TRUE)

# deploy to open-aims live site
rsconnect::deployApp(account = "open-aims", appName = "bayesnec", 
                     forceUpdate = TRUE)

# deploy to beckyfisher test site
rsconnect::deployApp(account = "beckyfisher", appName = "shinybayesnec-dev", 
                     forceUpdate = TRUE)

# deploy to beckyfisher live site
rsconnect::deployApp(account = "beckyfisher", appName = "shinybayesnec", 
                     forceUpdate = TRUE)
