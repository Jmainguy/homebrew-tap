# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gohome < Formula
  desc "Dynamic DNS using nsd and ssh"
  homepage "https://github.com/Jmainguy/gohome"
  version "0.1.0"
  license "GPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jmainguy/gohome/releases/download/v0.1.0/gohome_Darwin_arm64.tar.gz"
      sha256 "c63fa99b40b5831e6f0c9d8acf859c668f95308e370d78aa9fea2c5e1c3b20e4"

      def install
        bin.install "gohome"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/gohome/releases/download/v0.1.0/gohome_Darwin_x86_64.tar.gz"
      sha256 "1f2ce16844dd6e81e0ff4bf362b9ae9b7611fbf40289a4ebd037e3375568040e"

      def install
        bin.install "gohome"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/gohome/releases/download/v0.1.0/gohome_Linux_x86_64.tar.gz"
      sha256 "85a19658ae29ca4a13c0232a301a08e2f8e7520422cb00223f335bcb6097d87b"

      def install
        bin.install "gohome"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Jmainguy/gohome/releases/download/v0.1.0/gohome_Linux_arm64.tar.gz"
      sha256 "bb2d5d67937f2a7e2664213567d60c9d69bcbd1078c60a89ec5b06754b3f10a0"

      def install
        bin.install "gohome"
      end
    end
  end

  test do
    system "#{bin}/gohome"
  end
end
