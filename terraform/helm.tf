#data "aws_eks_cluster" "cluster" {
#  name = local.cluster_name
#}

#data "aws_eks_cluster_auth" "cluster" {
#  name = local.cluster_name
#}

#provider "helm" {
#  kubernetes {
#    host                   = data.aws_eks_cluster.cluster.endpoint
#    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
#    exec {
#      api_version = "client.authentication.k8s.io/v1"
#      args        = ["eks", "get-token", "--cluster-name", local.cluster_name]
#      command     = "aws"
#    }
#  }
#}

# module "lb_role" {

#  source = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"

#   role_name                              = "prod_eks_lb"
#   attach_load_balancer_controller_policy = true

#   oidc_providers = {
#    main = {
#      provider_arn               = module.eks.oidc_provider_arn
#      namespace_service_accounts = ["kube-system:aws-load-balancer-controller"]
#     }
#  }
# }


# resource "kubernetes_service_account" "service-account" {
#  metadata {
#    name      = "aws-load-balancer-controller"
#    namespace = "kube-system"
#     labels = {
#      "app.kubernetes.io/name"      = "aws-load-balancer-controller"
#       "app.kubernetes.io/component" = "controller"
#     }
#     annotations = {
#      "eks.amazonaws.com/role-arn"               = module.lb_role.iam_role_arn
#       "eks.amazonaws.com/sts-regional-endpoints" = "true"
#     }
#   }
# }

#resource "helm_release" "ingress" {
#  name       = "ingress"
#  repository = "https://aws.github.io/eks-charts"
#  chart      = "aws-load-balancer-controller"
#  namespace  = "kube-system"
#  version    = "1.4.6"

#  set {
#    name  = "autoDiscoverAwsRegion"
#    value = "true"
#  }
#  set {
#    name  = "autoDiscoverAwsVpcID"
#    value = "true"
#  }

#  set {
#    name  = "clusterName"
#    value = local.cluster_name
#  }
#}