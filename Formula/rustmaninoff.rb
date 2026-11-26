class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.6.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.7/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "70c53d40660d33e3d6fd9708320c5f2e0537db2665a8ccf0167242215d77fc54"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.7/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "cc5c3dff59af26cecfc0f130b6341c5b650722838132655c9284780fb8167d38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.7/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "758c0ce7b83a10a5b3d7e96bcb351ef23eacb3cb0be215a751cbe9744d39a3ee"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.6.7/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34f636d797295b18cda4096980e903484b5ff03c0fc59e7038481dacde434e27"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
