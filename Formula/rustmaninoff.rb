class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.4/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "d63ec00f1a2e02e347c67766095dcc6c9419caf866990105fac9153baa6a95ec"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.4/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "f1818e0cc865a7cae201c90fd81acc5de175c232ad6f4ca7bad73923b4f0f55a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.4/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9331b66eb5162ac31cf1a97b2ade7ca0706765cf60396b2abad93023c5a9e2d"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.4/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8db56ba0a9a96188bd2c4b68983cec5ba496a7772e36f51ab9fc009f4ffdfaa2"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
