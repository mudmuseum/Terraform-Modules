variable "name" {
  description = "The name of the EventBridge Rule."
}

variable "description" {
  description = "The Description of the EventBridge Rule."
}

variable "pattern" {
  description = "The Pattern to match for the EventBridge Rule."
}

variable "role_arn" {
 description = "The Role ARN to associate with the EventBridge Rule."
}

variable "tags" {
  description = "The Tags to associate with the EventBridge Rule."
}
