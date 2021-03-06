# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bible < Formula
  desc "A command line bible"
  homepage "https://github.com/Jmainguy/bible"
  version "0.3.1"
  license "GPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jmainguy/bible/releases/download/v0.3.1/bible_Darwin_arm64.tar.gz"
      sha256 "a6ec0c274ff612add6e41b196a9a51be82f53120031b308f8a480cb35daaee66"

      def install
        bin.install "bible"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/bible/releases/download/v0.3.1/bible_Darwin_x86_64.tar.gz"
      sha256 "0277d6149d9bb1166e3afe28207ec828aadc0f9cdc189256c5cb93f948ec8f82"

      def install
        bin.install "bible"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Jmainguy/bible/releases/download/v0.3.1/bible_Linux_arm64.tar.gz"
      sha256 "e89e866dde659ff11b0734e5efa2f78cc779f4687c5173877679a4066d7250a0"

      def install
        bin.install "bible"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Jmainguy/bible/releases/download/v0.3.1/bible_Linux_x86_64.tar.gz"
      sha256 "a41604d9b87eb0a9bf72b454ab9cbdb13556e712fa8d642814f81d73fdcb98f3"

      def install
        bin.install "bible"
      end
    end
  end

  test do
    system "#{bin}/bible"
  end
end
