class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.4/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "59422affaa05d32e97db21e2aa68fa8b878293d632653b014e024787a5311bcb"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.4/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "5a334071efe812f1f26978102a87c2506d705e043ff64d851a44c8f9b76facde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.4/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ec45904d0bb7e5403e61117af74daa0d738f0901617587a7c440356ab228ad4"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.4/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae3d779801793ec93e8a997c94e32aca66880a230ab8a1731464f1ffc83038f0"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
