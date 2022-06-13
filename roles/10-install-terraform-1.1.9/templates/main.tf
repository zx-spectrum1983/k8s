terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "{{tf_token}}"
  cloud_id  = "{{tf_cloud_id}}"
  folder_id = "{{tf_folder_id}}"
  zone      = "{{tf_zon}}"
}
