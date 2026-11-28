class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.10/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "23da18fc6d7affac2f8554c1b5fcf2926e7ce61e5ceae96a7b17d821a0a17760"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.10/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "3a404ec4a8d5070057ff06e4e43014a4c72e69dc8827d1d3cd67078dd199b517"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.10/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bfc62ccbcad671949d7024aa66a8cc66ba9a346a1a28b88f9385fb65be9b7f9"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.10/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc61c398596973a0511532097d7339fb0f222a25dde98cec33b9a0f7813981a5"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
