class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.2/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "4bc284301ba013af5ce5a8203408250c71e924343d3264a52de8a769fa49840b"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v0.0.2/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "2766c57ee488a977515e206108a465449779b4d997a8e9944b4205dbf3adae22"
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
