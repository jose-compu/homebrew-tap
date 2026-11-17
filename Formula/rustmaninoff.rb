class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.0/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "b2d8f792d4b452b3a543723af81bca5e02e86727a58d91e4bbe65b66cbb91eec"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.0/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "81d57d3938913a5ef10374ba9bdb3fd7c264e02cc16615b7fbd0c581b8b42edb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.0/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "700337b4501781cf010fe5ff409a49b208d82725ab7887806dc9f4ada089ad9c"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.0/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a04bca04ece0ae1921509965109cea77eeb6a54c3164638f2cd2476ac704a888"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
