class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.1/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "8803b93aea25f15735eed10c72363c611a4faf11b3b284af951d86067ba40151"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.1/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "e37517d80068f70ae4647b61a137d1e4726d7e352c8748c2b288b5deaf4904a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.1/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20afebec3a8cf51a97aff0bf711834d37c4a9c594a15c3948aa73c5c8fc45936"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.1/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ae409b108474b8c2a7e9b2df9a265a5f27aaa81d531c9560abb767d3bbc80ec"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
