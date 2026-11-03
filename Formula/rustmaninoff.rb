class Rustmaninoff < Formula
  desc "Checkov-compatible IaC scanner in a single Rust binary"
  homepage "https://github.com/jose-compu/rustmaninoff"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.2/rustmaninoff-aarch64-apple-darwin.tar.gz"
      sha256 "6c104277cf1e67b60126d093662b5e291d93e5a5686bba976be886834d1539ad"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.2/rustmaninoff-x86_64-apple-darwin.tar.gz"
      sha256 "634bfba532831515faef9b13324c7c082f238c3169845d57480382f41c90e429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.2/rustmaninoff-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9ec0e0b527f81da6ec0c4e122e0c9ce1b29ad723f905372094268bfd8346eb0"
    end
    on_intel do
      url "https://github.com/jose-compu/rustmaninoff/releases/download/v0.4.2/rustmaninoff-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c0353c0fd88d4e76bfbfd6e8288b44bc7c9eff654fdabf4212a65179535271b9"
    end
  end

  def install
    bin.install "rustmaninoff"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rustmaninoff --version")
  end
end
