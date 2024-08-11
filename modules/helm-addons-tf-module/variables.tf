variable "addons" {
  type = map(object({
    chart        = string
    version      = string
    namespace    = string
    repository   = string
    reuse_values = bool
    wait         = bool
    values       = list(string)
  }))
}