<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.47.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm"></a> [helm](#module\_helm) | github.com/terraform-helm/terraform-helm-aws-load-balancer-controller | n/a |
| <a name="module_role_sa_secrets"></a> [role\_sa\_secrets](#module\_role\_sa\_secrets) | github.com/littlejo/terraform-aws-role-eks.git | v0.1 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | EKS cluster name | `string` | n/a | yes |
| <a name="input_images"></a> [images](#input\_images) | Map of images | `map(string)` | `{}` | no |
| <a name="input_install_helm"></a> [install\_helm](#input\_install\_helm) | Do you want to install helm chart? | `bool` | `true` | no |
| <a name="input_irsa_iam_permissions_boundary"></a> [irsa\_iam\_permissions\_boundary](#input\_irsa\_iam\_permissions\_boundary) | IAM permissions boundary for IRSA roles | `string` | `""` | no |
| <a name="input_irsa_iam_policy_name"></a> [irsa\_iam\_policy\_name](#input\_irsa\_iam\_policy\_name) | IAM policy name for IRSA | `string` | `"eks-lb"` | no |
| <a name="input_irsa_iam_role_name"></a> [irsa\_iam\_role\_name](#input\_irsa\_iam\_role\_name) | IAM role name for IRSA | `string` | `"eks-lb"` | no |
| <a name="input_irsa_iam_role_path"></a> [irsa\_iam\_role\_path](#input\_irsa\_iam\_role\_path) | IAM role path for IRSA roles | `string` | `"/"` | no |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | Namespace | `string` | `"kube-system"` | no |
| <a name="input_kubernetes_svc_image_pull_secrets"></a> [kubernetes\_svc\_image\_pull\_secrets](#input\_kubernetes\_svc\_image\_pull\_secrets) | Secrets to pull your image | `list(any)` | `null` | no |
| <a name="input_oidc_provider"></a> [oidc\_provider](#input\_oidc\_provider) | EKS OIDC provider | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Region of you eks cluster | `string` | n/a | yes |
| <a name="input_release_version"></a> [release\_version](#input\_release\_version) | version of helm release | `string` | `null` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Name of the service account to have right to use load balancer | `string` | `"aws-load-balancer-controller-sa"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->