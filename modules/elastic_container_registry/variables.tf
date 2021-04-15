variable "names" {
  description = "List of names of ECR repositories."
  type        = list
}

variable "tags" {
  description = "Tags for the Elastic Container Repository."
  type        = map
  default     = { }
}
