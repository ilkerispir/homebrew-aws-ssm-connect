class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v1.0.1/aws-ssm-tunnel-darwin-amd64.tar.gz"
      sha256 "a35e2fc457998f1ce6c75ed069229f5b1cdd1fd1ede4683ee39923640bee12a0"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-tunnel/releases/download/v1.0.1/aws-ssm-tunnel-darwin-arm64.tar.gz"
      sha256 "5f1897e6feccf52dbd14ad2082647251a69d13d2886f4187aa45beb05a0b4f30"
    end
  end

  version "v1.0.1"

  def install
    bin.install "aws-ssm-tunnel"
  end

  test do
    system "#{bin}/aws-ssm-tunnel", "--help"
  end
end
