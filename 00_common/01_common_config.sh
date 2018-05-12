#!/usr/bin/env bash

# Regions
primary_region=westeurope
secondary_region=northeurope

# Resource Groups
baserg=mr-example-rg

# VNet
# virtual network on the primary region
primary_vnet=vnet-primary
primary_vnet_cidr=10.1.0.0/16
# virtual network on the secondary region
secondary_vnet=vnet-secondary
secondary_vnet_cidr=10.2.0.0/16
# peering
primary_to_secondary_peering=vnet-peer-primary-secondary
secondary_to_primary_peering=vnet-peer-secondary-primary

# Subnet
# primary region / operation
primary_operation_subnet=subnet-primary-operation
primary_operation_subnet_cidr=10.1.0.0/24
# primary region / API
primary_api_subnet=subnet-primary-api
primary_api_subnet_cidr=10.1.1.0/24
# primary region / k8s
primary_k8s_subnet=subnet-primary-k8s
primary_k8s_subnet_cidr=10.1.2.0/24
# primary region / DB
primary_db_subnet=subnet-primary-db
primary_db_subnet_cidr=10.1.3.0/24
# secondary region / operation
secondary_operation_subnet=subnet-secondary-operation
secondary_operation_subnet_cidr=10.2.0.0/24
# secondary region / API
secondary_api_subnet=subnet-secondary-api
secondary_api_subnet_cidr=10.2.1.0/24
# secondary region / k8s
secondary_k8s_subnet=subnet-secondary-k8s
secondary_k8s_subnet_cidr=10.2.2.0/24
# secondary region / DB
secondary_db_subnet=subnet-secondary-db
secondary_db_subnet_cidr=10.2.3.0/24

