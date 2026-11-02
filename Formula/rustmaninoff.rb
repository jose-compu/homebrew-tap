class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.0/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "6699dd66cc817fa25da6375713b35472453a14a5a11529f87f2aa4334ec568dd"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.0/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "b224f03cf4cca486fbebdfb3d4213a8c35a70747bb66b17d4390602396aeefea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.0/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ca1411f211af850814f3e67e0a6367cbcf22174b9dbcbada96315a2eb49758b"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.0/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "419fb030ead705b1933c943c79d490fda505ed90545e6b0bd3978bf573d97f78"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
