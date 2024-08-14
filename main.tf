module "addons" {
  source = "./modules/helm-addons-tf-module"
  addons = {
    "ingress-nginx" = {
      chart            = "ingress-nginx"
      namespace        = "ingress-nginx"
      create_namespace = true
      repository       = "https://kubernetes.github.io/ingress-nginx"
      reuse_values     = true
      wait             = true
      version          = "4.11.1"
      values           = [file(join("", [path.module, "/values/", "ingress-nginx-values.yaml"]))]
    }
  }
}