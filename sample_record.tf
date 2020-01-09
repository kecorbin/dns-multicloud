

resource "aws_route53_record" "sample_record" {
  zone_id = "${aws_route53_zone.aws_sub_zone.0.zone_id}"
  name    = "sample"
  type    = "A"
  ttl     = "300"
  records = ["5.5.5.5"]
}


resource "aws_route53_record" "sample_record" {
  zone_id = "${aws_route53_zone.aws_sub_zone.0.zone_id}"
  name    = "sample2"
  type    = "A"
  ttl     = "300"
  records = ["5.5.5.6"]
}
