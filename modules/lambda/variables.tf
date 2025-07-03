variable "function_name" {
    type = string
    description = "Defines the lambda function name"
}
variable "handler" {
    type = string
    description = "Specifies the entry point of lambda code"
}
variable "runtime" {
    type = string
    description = "Defines the language and version for the lambda runtime"
}
variable "role_arn" {
    type = string
    description = "Defines the IAM role"
}
variable "filename" {
    type = string
    description = "Defines the path to the zip file that consists of lambda function code"
}
