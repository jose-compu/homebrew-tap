class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.5/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "40712cb4a27e4dcb4c720f4169fd49e81873a3f873e24c9c59cc431a4dfc65ad"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.5/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "b132e053f8b607fddafcdd335d1d7869d446ea0c191243c9c796006e9a3b0c1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.5/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ee629c077dd4bfdd5d3bb2914cee0d092781d0c965a20b70925cc83dad8f6c0"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.5/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8a50dd3f85866154faf5978e0940b050a8deaabf631c89e6c272bbc89237e1f"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
