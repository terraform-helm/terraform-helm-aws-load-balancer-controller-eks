module "helm" {
  source          = "github.com/terraform-helm/terraform-helm-aws-load-balancer-controller?ref=v0.1.1"
  count           = var.install_helm ? 1 : 0
  release_version = var.release_version
  images          = var.images
  namespace       = var.namespace
  set_values = [
    {
      name  = "serviceAccount.name"
      value = var.service_account_name
    },
    {
      name  = "serviceAccount.create"
      value = "false"
    },
  ]
  values = [templatefile("${path.module}/helm/aws_lb.yaml", {
    aws_region     = var.region,
    eks_cluster_id = var.cluster_id,
    }
  )]
}
