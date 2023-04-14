module "yandex_cloud_network" {
    source = "./modules/tf-yc-network"
}

module "yandex_cloud_instance" {
    source = "./modules/tf-yc-instance"
    zone = "${var.zone}"
    subnet_id = module.yandex_cloud_network.yandex_vpc_subnet["${module.yandex_cloud_instance.choosed_zone}"].subnet_id
}
