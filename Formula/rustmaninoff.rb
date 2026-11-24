class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.4/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "3bd205c6f77d6b1bcb8987e3f24f925c0d9df452707f0f0c0ec2aabd767a81b8"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.4/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "dc0f1e4af52d0f9b5407e6d8be6c6ca99effda16d660d303522bea54fb47c6de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.4/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc09e8d924ffc528de822abafb3bd0e6a611bf1cdb0c319c4375e08d866bf42a"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.4/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97c540237557e222761b6d7b0d0ce625cfe64dc158e37c7c94ccdae4b8863564"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
