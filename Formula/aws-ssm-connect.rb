class AwsSsmTunnel < Formula
  desc "CLI tool to tunnel into RDS & ElastiCache over SSM-managed EC2 instances"
  homepage "https://github.com/ilkerispir/aws-ssm-connect"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilkerispir/aws-ssm-connect/releases/download/v1.0.1/aws-ssm-connect-darwin-amd64.tar.gz"
      sha256 "32e09db295edf7efb1c27dddabb3519c628dfea3ec94d63e5879cdf8833d46e5"
    elsif Hardware::CPU.arm?
      url "https://github.com/ilkerispir/aws-ssm-connect/releases/download/v1.0.1/aws-ssm-connect-darwin-arm64.tar.gz"
      sha256 "2570ed407bb6584cd0b61d7804336384d1e0153bd8c7cbadd7fc4a7f2cc61511"
    end
  end

  version "v1.0.1"

  def install
    bin.install "aws-ssm-connect"
  end

  test do
    system "#{bin}/aws-ssm-connect", "--help"
  end
end
