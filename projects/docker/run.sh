#!/bin/bash

############################################################
#
#   Creates/destroys a Docker container running nginx
#
############################################################

echo ""
echo "=================[ WARNING ]======================"
echo ""
echo "  Terraform assistant"
echo ""
echo "=================================================="
echo ""

PS3="Terraform - Please enter your choice: "
options=("terraform init" "terraform plan" "terraform apply" "terraform destroy" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "terraform init")
            terraform init
            break
            ;;
        "terraform plan")
            terraform plan
            break
            ;;
        "terraform apply")
            terraform apply --auto-approve
            break
            ;;
        "terraform destroy")
            terraform destroy --auto-approve
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done