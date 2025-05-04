class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v1.0.0/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "0039958225d05932845babc51b2e7b4cb36a37c988bfc6ae48329335095bb5dc"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v1.0.0/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "83c1cf648c9bb5b0f9da74bdeb49bdc48e59696dd2d7f0417ed4433373624c1d"
    end
  end

  version "v1.0.0"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
