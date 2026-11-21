class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.0/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "28585a23b5c211c1975c1aef5c13cc7917dc40e36d9a44d7d83c0db350fb1290"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.0/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "4ac5b222dd472550169dfa22058587fd599bf3dba851503bc4dc84f1bb520df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.0/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d216fb30cb22709e7c2653d979bed238036605d1c13c784b2a6af7a1278f07c1"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.0/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f13ef26d826e8c43b8a1ddb5f6256dd696f97afba8264b3b17b70386ee93c36"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
