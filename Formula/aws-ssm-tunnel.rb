class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.4/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "39495c2446920ee4a31d4f55f84b40b98152674bcce57dce7334ca6d2e83d8b3"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.4/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "a287001eca460400b302453ef90e0503f6dcd3dd4a318d0f87f7fa60efc2ffb8"
    end
  end

  version "v0.0.4"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
