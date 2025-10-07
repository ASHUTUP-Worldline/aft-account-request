# © 2024 Amazon Web Services, Inc. or its affiliates. All Rights Reserved.
# This AWS Content is provided subject to the terms of the AWS Customer Agreement available at
# http://aws.amazon.com/agreement or other written agreement between Customer and either
# Amazon Web Services, Inc. or Amazon Web Services EMEA SARL or both.

module "ct_management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ASHUTUP+Worldline-CT-Management@amazon.com" #"fs-isp-engineering+tf-lz@amazon.com"
    AccountName               = "CT-Management"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "ashutup@amazon.com" #"fs-isp-engineering@amazon.com"
    SSOUserFirstName          = "Ashutosh"
    SSOUserLastName           = "Upadhyay"
  }

  account_tags = {
    "Name"  = "CT-Management"
    "Owner" = "Cloud Sec Ops"
  }

  change_management_parameters = {
    change_requested_by = "Landing-Zone-Admin"
    change_reason       = "Initial Onboarding"
  }

  account_customizations_name = "CT-Management"
}

module "audit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ASHUTUP+Worldline-Audit@amazon.com" #"fs-isp-engineering+tf-lz-audit@amazon.com"
    AccountName               = "Audit"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "ashutup@amazon.com" #"fs-isp-engineering@amazon.com"
    SSOUserFirstName          = "Ashutosh"
    SSOUserLastName           = "Upadhyay"
  }

  account_tags = {
    "Name"  = "Audit"
    "Owner" = "Cloud Sec Ops"
  }

  change_management_parameters = {
    change_requested_by = "Ashutosh Upadhyay"
    change_reason       = "Initial Onboarding"
  }

  account_customizations_name = "Audit"
}

module "log_archive" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ASHUTUP+Worldline-Log-Archive@amazon.com" #"fs-isp-engineering+tf-lz-log-archive@amazon.com"
    AccountName               = "Log Archive"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "ashutup@amazon.com" #"fs-isp-engineering@amazon.com"
    SSOUserFirstName          = "Ashutsh"
    SSOUserLastName           = "Upadhyay"
  }

  account_tags = {
    "Name"  = "Log Archive"
    "Owner" = "Cloud Sec Ops"
  }

  change_management_parameters = {
    change_requested_by = "Ashutosh Upadhyay"
    change_reason       = "Initial Onboarding"
  }

  account_customizations_name = "account-log-archive"
}

module "aft_management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ASHUTUP+Worldline-AFT-Management@amazon.com" #"fs-isp-engineering+tf-lz-aft-management@amazon.com"
    AccountName               = "AFT-Management"
    ManagedOrganizationalUnit = "Deployments"
    SSOUserEmail              = "ashutup@amazon.com" #"fs-isp-engineering@amazon.com"
    SSOUserFirstName          = "Ashutsh"
    SSOUserLastName           = "Upadhyay"
  }

  account_tags = {
    "Name"  = "AFT-Management"
    "Owner" = "Cloud Sec Ops"
  }

  change_management_parameters = {
    change_requested_by = "Ashutosh Upadhyay"
    change_reason       = "Initial Onboarding"
  }

  account_customizations_name = "account-aft-management"
}

module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ASHUTUP+Worldline-Network@amazon.com" #"fs-isp-engineering+tf-lz-network@amazon.com"
    AccountName               = "Network"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "ashutup@amazon.com" #"fs-isp-engineering@amazon.com"
    SSOUserFirstName          = "Ashutsh"
    SSOUserLastName           = "Upadhyay"
  }

  account_tags = {
    "Name"  = "Network"
    "Owner" = "Cloud Sec Ops"
  }

  change_management_parameters = {
    change_requested_by = "Ashutosh Upadhyay"
    change_reason       = "Initial Onboarding"
  }

  account_customizations_name = "account-network"
}
