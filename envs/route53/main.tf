resource "aws_route53_zone" "atihita_com" {
  name = "atihita.com"
}

resource "aws_route53_record" "atihita_com_mx" {
  zone_id = aws_route53_zone.atihita_com.zone_id
  name    = ""
  type    = "MX"
  ttl     = 60
  records = [
    "10 ASPMX.L.GOOGLE.COM.",
    "20 ALT1.ASPMX.L.GOOGLE.COM.",
    "20 ALT2.ASPMX.L.GOOGLE.COM.",
    "30 ASPMX2.GOOGLEMAIL.COM.",
    "30 ASPMX3.GOOGLEMAIL.COM."
  ]
}

resource "aws_route53_record" "atihita_com_cname_mail" {
  zone_id = aws_route53_zone.atihita_com.zone_id
  name    = "mail"
  type    = "CNAME"
  ttl     = 60
  records = ["ghs.google.com."]
}

resource "aws_route53_zone" "rajiv_sg" {
  name = "rajiv.sg"
}