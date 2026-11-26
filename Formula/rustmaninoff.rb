class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.6/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "ab90fd6215ba46a458e49935881f4ad09fd08638dabc078796279962d2392456"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.6/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "eb0b065ca9da8ccf49d14b7d99b7745b0cbdcf08c5c4a960ffb8fc76187b05f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.6/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c6da2e851a111c0789b047e9c73f208cd042bb4df256b25b70d0a7200fa686f"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.6/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f629f244f5e62c2d3cac0aaa9da9f92cc2b72a6903634753468f04baef2123ff"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
