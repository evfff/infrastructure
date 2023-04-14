output "ip_address" {
    value = module.yandex_cloud_instance.ip_address
}
output "ip_address_out" {
    value = module.yandex_cloud_instance.ip_address_out
} 

output "zone_list" {
    value = module.yandex_cloud_network.yandex_vpc_subnet
}
