#!/usr/bin/env bash
. ../00_common/01_common_config.sh
primary_vnet_id=$(az network vnet show -g ${baserg} -n ${primary_vnet} --query id -o tsv)
secondary_vnet_id=$(az network vnet show -g ${baserg} -n ${secondary_vnet} --query id -o tsv)

az network vnet peering create -g ${baserg} -n ${primary_to_secondary_peering} \
 --vnet-name ${primary_vnet} --remote-vnet-id ${secondary_vnet_id} \
 --allow-vnet-access
az network vnet peering create -g ${baserg} -n ${secondary_to_primary_peering} \
 --vnet-name ${secondary_vnet} --remote-vnet-id ${primary_vnet_id} \
 --allow-vnet-access
