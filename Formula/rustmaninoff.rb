class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.3.0/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "4ede972955c939bf0f430d2abd8da6f1e419da0415cfeb122b8ae9e3dff5ba93"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.3.0/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "d40adedefa1f432ba569a834580a3effc562b581ea57232aaff7d8d78435345d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.3.0/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81a1692815e2a0cf6acbfdba660b39c7528647096a12d357afea3a70903d54ab"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.3.0/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80cd46bf7b2753791ab4ad1e4295e0546ff9e022c3fa6c47c330062f6f4946e1"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
