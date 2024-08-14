variable "addons" {
  type = map(object({
    chart            = string
    version          = string
    namespace        = string
    create_namespace = bool
    repository       = string
    reuse_values     = bool
    wait             = bool
    values           = list(string)
  }))
}