# Generated by: tyk-ci/wf-gen
# Generated on: Fri  3 Sep 12:23:14 UTC 2021

# Generation commands:
# ./pr.zsh -title [TT-2932] systemd service restore for deb -base releng/upgrades -branch releng/upgrades -repos tyk-sink,tyk-identity-broker,tyk-pump,raava -p
# m4 -E -DxREPO=tyk-identity-broker


data "terraform_remote_state" "integration" {
  backend = "remote"

  config = {
    organization = "Tyk"
    workspaces = {
      name = "base-prod"
    }
  }
}

output "tyk-identity-broker" {
  value = data.terraform_remote_state.integration.outputs.tyk-identity-broker
  description = "ECR creds for tyk-identity-broker repo"
}

output "region" {
  value = data.terraform_remote_state.integration.outputs.region
  description = "Region in which the env is running"
}
