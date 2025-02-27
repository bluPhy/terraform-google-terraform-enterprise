# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_pet" "redis" {
  length = 2
}

resource "google_redis_instance" "redis" {
  name           = "${var.namespace}-tfe-${random_pet.redis.id}"
  tier           = "STANDARD_HA"
  memory_size_gb = var.memory_size
  auth_enabled   = var.auth_enabled

  authorized_network = var.service_networking_connection.network
  connect_mode       = "PRIVATE_SERVICE_ACCESS"

  redis_version = "REDIS_5_0"
  display_name  = "${var.namespace} TFE Instance"

  labels = var.labels
}
