#!/usr/bin/env bash
. ../00_common/01_common_config.sh

az network vnet subnet create -g ${baserg} \
 -n ${primary_operation_subnet} \
 --address-prefix ${primary_operation_subnet_cidr} \
 --vnet-name ${primary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${primary_api_subnet} \
 --address-prefix ${primary_api_subnet_cidr} \
 --vnet-name ${primary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${primary_k8s_subnet} \
 --address-prefix ${primary_k8s_subnet_cidr} \
 --vnet-name ${primary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${primary_db_subnet} \
 --address-prefix ${primary_db_subnet_cidr} \
 --vnet-name ${primary_vnet}


az network vnet subnet create -g ${baserg} \
 -n ${secondary_operation_subnet} \
 --address-prefix ${secondary_operation_subnet_cidr} \
 --vnet-name ${secondary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${secondary_api_subnet} \
 --address-prefix ${secondary_api_subnet_cidr} \
 --vnet-name ${secondary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${secondary_k8s_subnet} \
 --address-prefix ${secondary_k8s_subnet_cidr} \
 --vnet-name ${secondary_vnet}
az network vnet subnet create -g ${baserg} \
 -n ${secondary_db_subnet} \
 --address-prefix ${secondary_db_subnet_cidr} \
 --vnet-name ${secondary_vnet}
