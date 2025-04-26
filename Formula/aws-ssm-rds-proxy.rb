class AwsSsmRdsProxy < Formula
  desc "Tray app to easily forward AWS EC2 instances to RDS databases over SSM"
  homepage "https://github.com/ilkerispir/aws-ssm-rds-proxy"
  url "https://github.com/ilkerispir/aws-ssm-rds-proxy/releases/download/0.0.1/aws-ssm-rds-proxy-v0.0.1.tar.gz"
  
  sha256 "5a7676ff05e30a64d7cb530daade4fae022aa2fa2714b52e8a6df2a884f13883"
  version "0.0.1"

  def install
    bin.install "aws-ssm-rds-proxy"
  end
end
