resource "helm_release" "addons_list" {
  for_each         = var.addons
  name             = each.key
  chart            = each.value.chart
  version          = each.value.version
  namespace        = each.value.namespace
  create_namespace = each.value.create_namespace
  repository       = each.value.repository
  reuse_values     = each.value.reuse_values
  wait             = each.value.wait
  values           = concat([file(join("", [path.module, "/default-values/", each.key, "-default-values.yaml"]))], each.value.values)
}