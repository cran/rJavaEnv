## -----------------------------------------------------------------------------
library(rJavaEnv)


## -----------------------------------------------------------------------------
project_dir <- tempdir()
setwd(project_dir)


## -----------------------------------------------------------------------------
options(rJavaEnv.cache_path = "/path/to/your/desired/cache/folder")


## -----------------------------------------------------------------------------
getOption("rJavaEnv.cache_path")


## -----------------------------------------------------------------------------
java_17_distr <- java_download(version = 17)
java_17_distr


## -----------------------------------------------------------------------------
java_8_linux64_distr <- java_download(
  version = 8,
  platform = "linux",
  arch = "x64"
)


## -----------------------------------------------------------------------------
java_list("distrib")


## -----------------------------------------------------------------------------
java_clear("distrib")


## -----------------------------------------------------------------------------
java_clear("distrib", delete_all = TRUE)


## -----------------------------------------------------------------------------
java_8_distr <- java_download(8)
java_17_distr <- java_download(17)
java_22_distr <- java_download(22)


## -----------------------------------------------------------------------------
java_install(
  java_distrib_path = java_17_distr,
  autoset_java_env = FALSE)


## -----------------------------------------------------------------------------
java_install(
  java_distrib_path = java_8_distr,
  autoset_java_env = TRUE)


## -----------------------------------------------------------------------------
java_list("project")


## -----------------------------------------------------------------------------
java_check_version_cmd()


## -----------------------------------------------------------------------------
java_list("project")


## -----------------------------------------------------------------------------
java_home_17 <- java_list("project", output = "vector")[1]
java_home_17


## -----------------------------------------------------------------------------
java_env_set(where = "both", java_home = java_home_17)


## -----------------------------------------------------------------------------
java_check_version_cmd() # for pacakges that use Java via commandline, like opentripplanner
java_check_version_rjava() # for packages that use Java via `rJava`, like r5r

