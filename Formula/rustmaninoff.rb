class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.3/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "de5be794a087084d1e9582be364c47fc2c77df295e896e0c1a4a118f5069bff6"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.3/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "1d70aa14066e04470db24fe31bf9b648040d67d703624663244a2ea120192560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.3/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "964058a970d0c60a34b97c2876c125d6171d80780938933dc426b90c9237b232"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.3/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8f1f676327247a6e61d98c613fd8d1b544e07171d27895463e2e20a7b897f26"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
