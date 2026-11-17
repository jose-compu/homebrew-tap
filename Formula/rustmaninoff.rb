class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.1/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "24d57879b6f503f63a13a2b9da8bf032f7937fa97d89709d638eeaa7e63ec93e"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.1/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "1285862b472b9398e0921ffcc3a1feabad4f9b6fb507418c7cec43c0dc227b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.1/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f0ab7519873b938808b4dc0af9b74fd0dbeda6bd002815e59d6311f0451c236"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.1/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14e96512ded5546eb26c5147e06fd3fdd5c350e57a5c941fb56573b42438c94a"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
