module "webserver_cluster" {
  source = "git@github.com:hendersonh/modules//services/webserver-cluster"
  workspace = "web-server"
  organization = "hendy"
  cluster_name = var.cluster_name
  ami          = "ami-068f27965379d536b"
  server_text  = "instance refresh"

  //db_remote_state_bucket = var.db_remote_state_bucket
  //db_remote_state_key    = var.db_remote_state_key

  instance_type      = "t2.micro"
  min_size           = 2
  max_size           = 4
  enable_autoscaling = false
}

resource "aws_security_group_rule" "allow_testing_inbound" {
  type              = "ingress"
  security_group_id = module.webserver_cluster.alb_security_group_id

  from_port   = 12345
  to_port     = 12345
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
