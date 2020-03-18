variable "prefix" {
  description = "The prefix which will be prepended to the names of resources."
  type        = string
}

variable "primary_cluster_endpoint_group_self_link" {
  description = "The self link of the compute network endpoint group for the primary cluster."
  type        = string
}

variable "ssl_certificate_self_link" {
  description = "The self link of the managed SSL certificate which will be applied to the load balancer."
  type        = string
}

variable "ssl_policy_self_link" {
  description = "The self link of a compute SSL policy for the SSL certificate."
  type        = string
}
