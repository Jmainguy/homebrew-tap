# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goalie < Formula
  desc "A golang CLI to display various stats about Hockey teams and their players"
  homepage "https://github.com/Jmainguy/goalie"
  version "0.0.0"
  license "GPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/goalie/releases/download/v0.0.0/goalie_Darwin_x86_64.tar.gz"
      sha256 "88dea34795418f8389a45c7f3ddd7f8636a9d5679a80411d18c8b4dd75e89902"

      def install
        bin.install "goalie"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/goalie/releases/download/v0.0.0/goalie_Linux_x86_64.tar.gz"
      sha256 "97a86261362785eda7dd28507142ce560e16a17086335d66212cbb50944bc49d"

      def install
        bin.install "goalie"
      end
    end
  end

  test do
    system "#{bin}/goalie"
  end
end