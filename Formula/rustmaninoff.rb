class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.1/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "33a86e1ab02386d6d5e7803cdb44fa62460df77364c70d4a38c2d35e1b1c79af"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.1/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "cc1eac70c3c7da11486bd12a8e88d3b25c9b9414f7aa90e786fcbbb8e02e7dec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.1/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3809b5d6b85bfb15dea748bff0effadad3cb07bac7d474e1ca6d9ce493a7ee0"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.1/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b636605c7e37303f65281a9e5514946174c218b667b753159e730affbf76df8"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
