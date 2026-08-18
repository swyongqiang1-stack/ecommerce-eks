resource "aws_eks_access_entry" "e_cm" {
  cluster_name      = aws_eks_cluster.e_cm.name
  principal_arn     = "arn:aws:iam::463884819678:user/terraform"
}



resource "aws_eks_access_policy_association" "e_cm" {
  cluster_name  = aws_eks_cluster.e_cm.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSViewPolicy"
  principal_arn = "arn:aws:iam::463884819678:user/terraform"

  access_scope {
    type       = "cluster"
  }
}