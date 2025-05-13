class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-connect/releases/download/v1.0.0/aws-ssm-connect-darwin-amd64.tar.gz"
      sha256 "cab86c177dacd566305ef0d5aecc37829cec8eff51a8793456f3c5a963120c01"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-connect/releases/download/v1.0.0/aws-ssm-connect-darwin-arm64.tar.gz"
      sha256 "cf589c375edd405c474573c93dfba56a76e49f5335e08b553c2180a195189034"
    end
  end

  version "v1.0.0"

  def install
    bin.install "aws-ssm-connect"
  end

  test do
    system "#{bin}/aws-ssm-connect", "--help"
  end
end
