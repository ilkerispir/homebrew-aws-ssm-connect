class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.5/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "e2e18af154dab6fad0cf103c31844ce35d74e4c325aea9d57a8028220204e77d"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.5/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "6e57fee7427d83e9e2c275338b487afabff470f93213fe5acfa9c9fc080a947e"
    end
  end

  version "v0.0.5"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
