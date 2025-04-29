class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-tunnel"
  url "https://github.com/ilkerispir/aws-ssm-tunnel/archive/refs/tags/0.0.2.tar.gz"
  sha256 "4ba6dbd23d33968a17eceb5c4792a1fd396ff6978b57c195e5758e47328d0863"
  license "Apache-2.0"
  version "0.0.2"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"aws-ssm-tunnel")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/aws-ssm-tunnel --help")
  end
end
