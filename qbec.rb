# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.12.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/splunk/qbec/releases/download/v0.12.4/qbec-darwin-amd64.tar.gz"
    sha256 "f1490fa19df564e273fbe9627cef27d95fe32a893e869129276712b48a39f13a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/splunk/qbec/releases/download/v0.12.4/qbec-linux-amd64.tar.gz"
      sha256 "6ecbe1e5a36c320397a637422a9a7e70d970845ef34d1362ee24e3a52bf8da50"
    end
  end

  def install
    bin.install "qbec"
  end

  test do
    system "#{bin}/qbec version"
  end
end
