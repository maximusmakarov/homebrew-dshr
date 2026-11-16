class Dshr < Formula
  desc "Rust-native agent harness (TUI, headless, HTTP/SSE, ACP)"
  homepage "https://github.com/maximusmakarov/deepseek_harness_rust"
  license "MIT"

  bottle do
    root_url "https://ghcr.io/v2/maximusmakarov/deepseek_harness_rust"
    sha256 arm64_sequoia: "1f086b6afae3cc701739a039abf2821126620f33ccd9f9cd0978f1acb033210a"
    sha256 sonoma:        "a9c68140fbbe69a8d7c6973c38ccb4340d5c0a27260270c25f31bbd6b5fba2db"
    sha256 aarch64_linux: "703ba47af82251712924385a285afb91c1bdd57984ed3141d5c7b3857c20fd55"
    sha256 x86_64_linux:  "f06d7fa3b639c3015e6ca211e5a3e4e2e4d85695865d4432810626c9331bf956"
  end

  on_macos do
    on_arm do
      url "https://github.com/maximusmakarov/deepseek_harness_rust/releases/download/v0.1.0/dshr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3cef01ac3afdf8a80054c6b1f3e3002e87cd2fc55929a38ceba24bb6311e2fe5"
    end

    on_intel do
      url "https://github.com/maximusmakarov/deepseek_harness_rust/releases/download/v0.1.0/dshr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1f89a09d46f0077855e8d1e89eb89c05977200a0347c24b03230dae748c01f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maximusmakarov/deepseek_harness_rust/releases/download/v0.1.0/dshr-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "288516d308de50558fc0f6311a2fa3b169057e96c3dea42b1ea604c71d8488ae"
    end

    on_intel do
      url "https://github.com/maximusmakarov/deepseek_harness_rust/releases/download/v0.1.0/dshr-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d99bc27f77c08ff8c838f1a714f5522eb27f1af0534d650ad1cd33ee3292b15"
    end
  end

  def install
    bin.install "dshr"
  end

  test do
    assert_match "dshr", shell_output("#{bin}/dshr --version")
  end
end
