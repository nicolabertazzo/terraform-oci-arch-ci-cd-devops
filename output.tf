/*
output "devops1" {
  value = oci_devops_deploy_artifact.test_deploy_oke_artifact
}
*/ 
output "devops2" {
  value = oci_devops_deploy_pipeline.test_deploy_pipeline
}
/*

/*
output "devops3" {
  value = oci_devops_deploy_stage.test_deploy_stage
}


output "devops4" {
value = oci_devops_build_pipeline_stage.test_deploy_stage
}

# output "build_digest_output" {
#   value = oci_devops_build_run.test_build_run.build_outputs[0].delivered_artifacts[0].items[0].delivered_artifact_hash
# }

output "devops5" {
value = oci_devops_build_run.test_build_run_1
}

output "devops6" {
value = oci_devops_project.test_project
}
*/

data "oci_devops_deployments" "test_deployments" {
deploy_pipeline_id = oci_devops_deploy_pipeline.test_deploy_pipeline.id
}

output "datasourcedeployments" {
    value = data.oci_devops_deployments.test_deployments.deployment_collection[0].items[0].id
}

data "oci_devops_deployment" "test_deployment" {
deployment_id = data.oci_devops_deployments.test_deployments.deployment_collection[0].items[0].id
}

output "datasourcedeployment" {
    value = data.oci_devops_deployment.test_deployment
}