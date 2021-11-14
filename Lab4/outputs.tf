
output "application_public_ips" {
  description = "application instance public ips"
  value       = module.app_server.instance_public_ip
}
