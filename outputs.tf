output "endpoint" {
  value = aws_eks_cluster.eks_iam.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eks_iam.certificate_authority.0.data
}