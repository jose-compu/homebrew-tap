class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.2/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "c0ad8acc13e5a8f4d60a47cd96c69d9a17055c77dd1b15ed34d71f9b128d9e5a"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.2/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "45f9037f5e5dddaebcf1efa3a89883d128cc0375fb15f0590ba25ac9518b5487"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.2/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d87baf7d999efe6079ec150849f742a1aea8f8e33e5e341a3e72d3ac0819d0bb"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.2/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "616404247ed54ee2c3fe2b18ab96a22ae915fd6a37e6b696d3a1a7b54c502323"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
