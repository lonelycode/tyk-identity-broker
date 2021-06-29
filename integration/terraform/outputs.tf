# Generated by: tyk-ci/wf-gen
# Generated on: Tue 29 Jun 15:32:17 UTC 2021

# Generation commands:
# ./pr.zsh -title publishing depends on smoke-tests -branch releng/master -base releng/master -p
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
