module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
  source = "./azure-functions/azure-functions.sentinel"
}

# Policies from the Hashicorp Library 
# see  ../reference_guide_content_v3/ 
# For more examples 

policy "enforce-mandatory-tags" {
    source = "./enforce-mandatory-tags.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "require-database-auditing" {
    source = "./require-database-auditing.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "require-free-sec-center-subscription-pricing-for-vms" {
  source = "./require-free-sec-center-subscription-pricing-for-vms.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "restrict-aks-clusters" {
    source = "./restrict-aks-clusters.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-app-service-to-https" {
    source = "./restrict-app-service-to-https.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-inbound-source-address-prefixes" {
    source = "./restrict-inbound-source-address-prefixes.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-outbound-destination-address-prefixes" {
    source = "./restrict-outbound-destination-address-prefixes.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-publishers-of-current-vms" {
    source = "./restrict-publishers-of-current-vms.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-image-id" {
    source = "./restrict-vm-image-id.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-publisher" {
    source = "./restrict-vm-publisher.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "restrict-vm-size" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "soft-mandatory"
}

## CIS Azure Policies ready made by Hashicorp
## https://github.com/hashicorp/terraform-foundational-policies-library/tree/master/cis/azure

policy "azure-cis-7.1-compute-managed-disk-encryption-is-enabled" {
  source = "../../cis/azure/compute/azure-cis-7.1-compute-managed-disk-encryption-is-enabled/azure-cis-7.1-compute-managed-disk-encryption-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-7.4-compute-only-approved-extensions-are-installed" {
  source = "../../cis/azure/compute/azure-cis-7.4-compute-only-approved-extensions-are-installed/azure-cis-7.4-compute-only-approved-extensions-are-installed.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-4.11-databases-mysql-enforce-ssl-connection-is-enabled" {
  source = "../../cis/azure/databases/azure-cis-4.11-databases-mysql-enforce-ssl-connection-is-enabled/azure-cis-4.11-databases-mysql-enforce-ssl-connection-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-4.13-databases-psql-enforce-ssl-connection-is-enabled" {
  source = "../../cis/azure/databases/azure-cis-4.13-databases-psql-enforce-ssl-connection-is-enabled/azure-cis-4.13-databases-psql-enforce-ssl-connection-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-6.1-networking-deny-public-rdp-nsg-rules" {
  source = "../../cis/azure/networking/azure-cis-6.1-networking-deny-public-rdp-nsg-rules/azure-cis-6.1-networking-deny-public-rdp-nsg-rules.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-6.2-networking-deny-public-ssh-nsg-rules" {
  source = "../../cis/azure/networking/azure-cis-6.2-networking-deny-public-ssh-nsg-rules/azure-cis-6.2-networking-deny-public-ssh-nsg-rules.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-6.3-networking-deny-any-sql-database-ingress" {
  source = "../../cis/azure/networking/azure-cis-6.3-networking-deny-any-sql-database-ingress/azure-cis-6.3-networking-deny-any-sql-database-ingress.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period" {
  source = "../../cis/azure/networking/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-3.1-storage-secure-transfer-required-is-enabled" {
  source = "../../cis/azure/storage/azure-cis-3.1-storage-secure-transfer-required-is-enabled/azure-cis-3.1-storage-secure-transfer-required-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-3.3-storage-queue-logging-is-enabled" {
  source = "../../cis/azure/storage/azure-cis-3.3-storage-queue-logging-is-enabled/azure-cis-3.3-storage-queue-logging-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-3.6-storage-blob-public-access-level-set-to-private" {
  source = "../../cis/azure/storage/azure-cis-3.6-storage-blob-public-access-level-set-to-private/azure-cis-3.6-storage-blob-public-access-level-set-to-private.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-3.7-storage-default-network-access-rule-set-to-deny" {
  source = "../../cis/azure/storage/azure-cis-3.7-storage-default-network-access-rule-set-to-deny/azure-cis-3.7-storage-default-network-access-rule-set-to-deny.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "azure-cis-3.8-storage-trusted-microsoft-services-is-enabled" {
  source = "../../cis/azure/storage/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled.sentinel"
  enforcement_level = "soft-mandatory"
}
