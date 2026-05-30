variable "instances" {
    type = map
    default = {
        mongodb = "m5a.xlarge"
        mysql = "m5a.2xlarge"
    }
} 
# This should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}

variable "zone_id" {
    default = "Z05013202FKF0ZL12WAOP"
}

variable "domain_name" {
    default = "daws88s.online"
}
