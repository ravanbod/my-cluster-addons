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

    "metrics-server" = {
      chart            = "metrics-server"
      namespace        = "kube-system"
      create_namespace = false
      repository       = "https://kubernetes-sigs.github.io/metrics-server"
      reuse_values     = true
      wait             = true
      version          = "3.12.1"
      values           = [file(join("", [path.module, "/values/", "metrics-server-values.yaml"]))]
    }

    "longhorn" = {
      chart            = "longhorn"
      namespace        = "longhorn-system"
      create_namespace = true
      repository       = "https://charts.longhorn.io"
      reuse_values     = true
      wait             = true
      version          = "1.6.2"
      values           = []
    }

  }
}