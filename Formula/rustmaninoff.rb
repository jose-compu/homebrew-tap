class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.8/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "8a3d365b7c089d8527aca9478c85ea924010c7f9f671a6008c5d3cdaef3865b0"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.8/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "eb2cb27658c00ac93f33b800f67c69d76fe2d72fe69f16e1c1a9c8d51d376a03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.8/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "744fee7c97c405b1b0ae4212b8ad8c13e6f8b49cc24b683378d16c7fe1c70bc6"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.8/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c1199a2046b2eae051800adde1afc03ed0fcf0c2ce082ec4a02fc6957acc264"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
