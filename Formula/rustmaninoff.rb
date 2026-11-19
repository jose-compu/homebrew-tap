class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.5/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "d08d2236a3950bd066c04f3ddce153689944e0cb77a13e29cd831660b282a4f1"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.5/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "d3d8e273e795c26c5096bc6140296292fc85660f2e857179a558e8db3350cb41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.5/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7059868f8e7d7c87ea0dbf4bc944ed6c83e3a493e877db5cfed802aba7fa7a3"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.5/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "109371c9d9a00be30c467b83f7654e528fdeb6c3dc0ec2bc6bf87ee338e8d2fa"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
