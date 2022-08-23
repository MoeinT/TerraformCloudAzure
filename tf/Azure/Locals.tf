locals {
  env = length(regexall(".*staging.*", terraform.workspace)) > 0 ? "staging" : "prod"
}