## -----------------------------------------------------------------------------
library(rJavaEnv)
getOption("rJavaEnv.valid_major_java_versions")


## -----------------------------------------------------------------------------
use_java("8")
"8" == java_check_version_cmd(quiet = TRUE)
"8" == java_check_version_rjava(quiet = TRUE)


## -----------------------------------------------------------------------------
use_java(17)
"17" == java_check_version_cmd(quiet = TRUE)
"17" == java_check_version_rjava(quiet = TRUE)


## -----------------------------------------------------------------------------
use_java(21)
"21" == java_check_version_cmd(quiet = TRUE)
"21" == java_check_version_rjava(quiet = TRUE)


## -----------------------------------------------------------------------------
library(rJavaEnv)
use_java("17")


## -----------------------------------------------------------------------------
rJavaEnv::use_java("17")


## -----------------------------------------------------------------------------
java_17_distrib <- java_download("17")
java_unpack(java_17_distrib)

