#!/usr/bin/env bash
. ../00_common/01_common_config.sh
az network vnet create -g ${baserg} -n ${primary_vnet} -l ${primary_region} \
 --address-prefix ${primary_vnet_cidr}
az network vnet create -g ${baserg} -n ${secondary_vnet} -l ${secondary_region} \
 --address-prefix ${secondary_vnet_cidr}

