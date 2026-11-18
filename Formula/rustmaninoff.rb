class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.3/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "2fa92462ba653d040bc18112f583e76953c05cffa6c430fdc775119fa88b4284"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.3/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "3dee07cf05c28f81243981d17a077b05aa3850d43a6b4185b1b17561ac9a165e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.3/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3addd22c6575ba7571253173815b58947cc02602a1bd803f673a93d8660f4253"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.3/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0892faea45e6e405adc2b90724aa28de1714c4ae65c51a05abb4cb3fc776817"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
