variable "resource_prefix" {
    description = "The resource prefix is a combination of the project name and neighborhood. This will be used to name all resources in this module."
    type        = string
}

variable "instance_type" {
    description = "The instance type to use for the server"
    type        = string
}

variable "stage" {
    description = "Which stage this infrastructure's being deployed to - dev, beta, prod, etc."
    type        = string

    validation {
        condition = can(regex("^(dev|beta|prod)$", var.stage))
        error_message = "Stage must be one of dev, beta, or prod"
    }
}