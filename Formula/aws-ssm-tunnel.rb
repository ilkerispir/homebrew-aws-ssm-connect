class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.3/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "b20d9adaf8eea875fd6384742bcfef815ef74e8f064c05e2d57289a21551d42a"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.3/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "1b7e5cfbaaef887fcccf619a285a4b0be8de64cfbfe3175140c8dc4b10c5c4cf"
    end
  end

  version "0.0.3"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
