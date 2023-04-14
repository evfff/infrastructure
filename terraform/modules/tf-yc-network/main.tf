data "yandex_vpc_network" "default" {
  name         = "default"
}
data "yandex_vpc_subnet" "default" {
  for_each    = toset(var.zone_list)
  name        = "${data.yandex_vpc_network.default.name}-${each.key}"
}
