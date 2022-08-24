locals {
  env = length(regexall(".*staging.*", terraform.workspace)) > 0 ? "staging" : length(regexall(".*dev.*", terraform.workspace)) > 0 ? "dev" : "prod"
}