variable "zone_list" {
  description = "Available zones for Yandex cloud"
  type        = set(string)
  default     = ["ru-central1-c", "ru-central1-a", "ru-central1-b"]
}
