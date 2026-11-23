class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.2/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "6b8562fbadd911b12c04f22fcb603cdaaa331b087f4eee642cc5d75c5cf40473"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.2/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "b1554d4e45b97ed73defa39325a567d06f217be07f000b43f0092fd8b45dc918"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.2/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe177d32b0b12ef99e7887bfa5b03d933661f22fc94f8dec0f4baa2bc4822955"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.2/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4fb3db4032a1d1d420ee44ae57e5abec132a74634bee82ec4121963c28f329a"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
