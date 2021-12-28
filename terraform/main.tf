# Create a pod with 2 containers, ingress port 5060
resource "kubernetes_pod" "nginx_server" {
  metadata {
    name = "nginx-example"
    labels = {
      App = "nginx_server"
    }
  }

  spec {
    container {
      image = "nginx:stable-alpine-perl"
      name  = "web-server"
      
      port {
        container_port = 8443
      }
    }
  }
}
#   spec {
#     container {
#       image = "debian:alpine"
#       name  = "backend-server"

#       port {
#         container_port = 5060
#       }
#     }
#   }
# resource "kubernetes_service" "nginx_server" {
#   metadata {
#     name = "nginx-example"
#   }
#   spec {
#     selector = {
#       App = "${kubernetes_pod.nginx_server.metadata.0.labels.App}"
#     }
#     port {
#       port = 80
#       target_port = 80
#     }

#     type = "LoadBalancer"
#   }
# }

# output "lb_hostname" {
#   value = "${kubernetes_service.nginx_server.load_balancer_ingress.0.hostname}"
# }