variable "images" {
  description = "Map of images"
  type = object({
    main = optional(string)
  })
  default = {
    main = null
  }
}

variable "install_helm" {
  description = "Do you want to install helm chart?"
  type        = bool
  default     = true
}

variable "release_version" {
  description = "version of helm release"
  type        = string
  default     = null
}

variable "service_account_name" {
  description = "Name of the service account to have right to use load balancer"
  type        = string
  default     = "aws-load-balancer-controller-sa"
}

variable "namespace" {
  description = "Namespace"
  type        = string
  default     = "kube-system"
}

variable "create_namespace" {
  description = "Create namespace ?"
  type        = bool
  default     = false
}

variable "irsa_iam_role_name" {
  type        = string
  description = "IAM role name for IRSA"
  default     = "eks-lb"
}

variable "cluster_id" {
  description = "EKS cluster name"
  type        = string
}

variable "region" {
  description = "Region of you eks cluster"
  type        = string
}
