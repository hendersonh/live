# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "organization" {
  description = "Organization name"
  type        = string
  default = "hendy"
}

variable "workspace" {
  description = "Work space in cloud for DB"
  type        = string
  default     = "db001"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = string
  default     = "webservers-prod"
}

variable "db_name" {
  description = "name of db"
  type        = string
  default     = "db001"
}
