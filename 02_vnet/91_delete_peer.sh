#!/usr/bin/env bash
. ../00_common/01_common_config.sh
az network vnet peering delete -g ${baserg} -n ${primary_to_secondary_peering} --vnet-name ${primary_vnet}
az network vnet peering delete -g ${baserg} -n ${secondary_to_primary_peering} --vnet-name ${secondary_vnet}
