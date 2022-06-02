resource "kubernetes_pod" "pod" {
  metadata {
    name = "kubernetes-pod"
  }

  spec {
    container {
      image = "476285196763.dkr.ecr.us-east-1.amazonaws.com/vic-counter-service:latest"
      name  = "vic-counter-service"

      port {
        container_port = 80
      }

    //   liveness_probe {
        // http_get {
        //   path = "/"
        //   port = 80

        //   http_header {
        //     name  = "X-Custom-Header"
        //     value = "Awesome"
        //   }
        // }

        // initial_delay_seconds = 3
        // period_seconds        = 3
      }
    }

    // dns_config {
    //   nameservers = ["1.1.1.1", "8.8.8.8", "9.9.9.9"]
    //   searches    = ["vic-counter-service.com"]

    //   option {
    //     name  = "ndots"
    //     value = 1
    //   }

    //   option {
    //     name = "use-vc"
    //   }
    // }

    // dns_policy = "None"
  }