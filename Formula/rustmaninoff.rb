class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.9/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "f2dd512a29c401c4cd3199b62c2f09dfe3d009bdd9724e0a3205f16706724159"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.9/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "0c52b8c4ec15afa58c77241bb26fe61d518a88e6b6ed25f0415d667638a60937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.9/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bf193a5d1b4bf846c522f4d2092c611cc6ec945e9757565d50ba462195e9e60"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.9/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "27614f2d9da1643c16f09fb3261233a8efcec72f3bd2727e38daea09dcc86a16"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
