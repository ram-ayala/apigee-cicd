#!/bin/bash

deployment_info=$(curl -H "Authorization: Basic $base64encoded" "https://api.enterprise.apigee.com/v1/organizations/onlineman477-eval/apis/HR-API/deployments") 

rev_num=$(jq -r .environment[0].revision[0].name <<< "${deployment_info}" ) 
# env_name=$(jq -r .environment[0].name <<< "${deployment_info}" ) 
# api_name=$(jq -r .name <<< "${deployment_info}" ) 
# org_name=$(jq -r .organization <<< "${deployment_info}" )

#declare -r stable_revision_number=20
#pre_rev=$(expr "$rev_num" - "$num1")


echo stable_revision = $rev_num
# echo $api_name
# echo $org_name
# echo $env_name
# echo $pre_rev
# echo $stable_revision_number


# curl -X DELETE --header "Authorization: Basic $base64encoded" "https://api.enterprise.apigee.com/v1/organizations/$org_name/environments/$env_name/apis/$api_name/revisions/$rev_num/deployments"

# curl -X DELETE --header "Authorization: Basic $base64encoded" "https://api.enterprise.apigee.com/v1/organizations/$org_name/apis/$api_name/revisions/$rev_num"

# curl -X POST --header "Content-Type: application/x-www-form-urlencoded" --header "Authorization: Basic $base64encoded" "https://api.enterprise.apigee.com/v1/organizations/$org_name/environments/$env_name/apis/$api_name/revisions/$stable_revision_number/deployments"


