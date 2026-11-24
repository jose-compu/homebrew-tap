class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.3/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "bc8ce21e87dcadb581b4b55aa91b7bc15b012f4a4de6e8c634ac7306d0332648"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.3/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "1e09a6be202f934988622c28875fdca2bbe08e266c7066e8fe2d132d84d3bb0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.3/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cc12263d0c30287e4d5751227314d13cc1fd219fc268f0dc49584b2ec7c68ab"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.3/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ffce4198dfd0e85f93b83ce2ff722afdea8e3c40f816e198b61c918642e5800"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
