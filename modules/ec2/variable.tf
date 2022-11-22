variable "instance_type" {
  description = "Instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance."
  type        = string
}

variable "tag_name" {
  description = "Tag name."
  type        = string
}

variable "volume_size" {
  description = "Size of the volume in gibibytes (GiB)."
  type        = number
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource."
  type        = string
}