class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.4/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "a091551071fbaf74fe164c27a49c7f5aacb922dfc578b2826244291db221797a"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.4/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "a091551071fbaf74fe164c27a49c7f5aacb922dfc578b2826244291db221797a"
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
