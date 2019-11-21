data "terraform_remote_state" "network" {
  backend = "atlas"

  config = {
    name = "${var.owner}/aws-us-east-1-network"
  }
}


resource "aws_route53_record" "bastion_host" {
  zone_id = "${aws_route53_zone.aws_sub_zone.0.zone_id}"
  name    = "bastion-us-east-1"
  type    = "A"
  ttl     = "300"
  records = [data.terraform_remote_state.network.outputs.bastion_ip]
}
