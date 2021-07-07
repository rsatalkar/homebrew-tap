# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.14.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.14.4/qbec-darwin-amd64.tar.gz"
      sha256 "2f4e9d87cc14c17fb5a5592bbbb689892ead975d46303248bad2d6ebc4ba6689"
    end
    if Hardware::CPU.arm?
      url "https://github.com/splunk/qbec/releases/download/v0.14.4/qbec-darwin-arm64.tar.gz"
      sha256 "bb8e12f53115c280c9bc27d1ed7f434a07c78991860223cec708c927a6b59598"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.14.4/qbec-linux-amd64.tar.gz"
      sha256 "3cf65e2583809f3181c135b37713b01f97b0e0a3cde75cdbf18f9522d3a6a855"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/splunk/qbec/releases/download/v0.14.4/qbec-linux-arm64.tar.gz"
      sha256 "3e0443d3087be7327938430cc16222e40fcdae6402c62bd201f32918917cf748"
    end
  end

  def install
    bin.install "qbec"
  end

  test do
    system "#{bin}/qbec version"
  end
end
