class AgentSwitch < Formula
  desc "Fast, encrypted CLI switcher for AI agent credentials (Codex & Antigravity)"
  homepage "https://github.com/Skyxim/agent-switch"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8d76ddea93baa639f10445b7d6169283987c4c282f43f8041ed175f442250a37"
    end
    on_intel do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "31b0e651fda9fbe8c4a99cbea08db49b78fe24cd35a9480b9941becfd99a294b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a8006d78619b65fbb9e3d65a679d3c2f9abe2d02ae8118582c77ab573a18650"
    end
    on_intel do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c1f85c4ebf46ab0001cb7256dd71f2673dbfd989ab624a15f5e5a6a3bdb5009"
    end
  end

  def install
    bin.install "ags"
  end

  test do
    assert_match "ags", shell_output("#{bin}/ags --help")
  end
end
