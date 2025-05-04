class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.6/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "a5d7e4e05106f174428a543a7801c22eadee9169ba58a871187bfcd627d20357"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.6/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "a9a66aedae59c57b6b80e1eb87258c464611711a66e7a43e0a0b60323a578eb7"
    end
  end

  version "v0.0.6"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
