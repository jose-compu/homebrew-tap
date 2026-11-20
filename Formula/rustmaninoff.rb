class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.5.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.6/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "b685ebf0eee5a812914ab167432b5b5ca6bf97af4781c4e61698aad366bbe02a"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.6/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "42b8aa1a4774426c0434910b168c1659eb933620a6b2cabd91625c082750dcc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.6/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1083a0cb158fda8c989035ad1a41d2378fb56b9e1d3f83d471d53833b05dd312"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.5.6/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bbc6bf3165d58e9e99b7730466f864e1bf01ab9ce752c0698bd85f48eaa52dc8"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
