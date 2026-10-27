class AgentSwitch < Formula
  desc "Fast, encrypted CLI switcher for AI agent credentials (Codex & Antigravity)"
  homepage "https://github.com/Skyxim/agent-switch"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c9b40a62c64bcfdb1eb371016cbdfb3cade85eef45730741857430c4d4155f35"
    end
    on_intel do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "19d81b27f3035003083170a1146a12104ec9f6df3f55fa64c132412d19e8a787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09383a2755901ee3c8cbe9400e4d110cd63d3113f9873a4d0508728790541d40"
    end
    on_intel do
      url "https://github.com/Skyxim/agent-switch/releases/download/v#{version}/ags-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e913fc98ac4c579c7d2d71b2c1660fc2f20d173d3f8c661564157b7125f4f1d5"
    end
  end

  def install
    bin.install "ags"
  end

  test do
    assert_match "ags", shell_output("#{bin}/ags --help")
  end
end
