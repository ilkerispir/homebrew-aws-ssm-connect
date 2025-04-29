class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"
  url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/0.0.2/aws-ssm-tunnel-v0.0.2.tar.gz"
  
  sha256 "54b87923ea68280ab167eb6f80d70a4b9927e8fdb2ad83a06d26a901dc345b32"
  version "0.0.2"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
