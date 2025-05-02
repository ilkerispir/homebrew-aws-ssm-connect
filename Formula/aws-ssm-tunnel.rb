class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.2/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "a0d57f9b4743c42877e07f9caa78f1d4d2e7859528927e8bc906b097b77f3033"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.2/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "4d34992e6ff19fbf1e4ca1c7aa2572205cd8a85e08ed3b7215cf69da84eb5b75"
    end
  end

  version "0.0.2"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
