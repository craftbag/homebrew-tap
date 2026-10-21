class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.1"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.1/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "1ad37e2a8db38974e534607b334efe2d6c7fa7b150fb4d1646ed1765cc53af8a"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.1/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "68911b9fed0fff516a77e1f7c9042a1066c61e2e2118bbcc77f0a2984bf86c43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.1/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9ff46f0cad9267909cfc7b1f2c53600b32b3ac205a8aaedd674d49e1724b3f66"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.1/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b66d2ad8bd745d5cba05d4359f1aedecc41b8cadb115dd294d507058fc7e36d5"
    end
  end

  def install
    bin.install "craftbag"
    bin.install "craftbag-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/craftbag --version")
    assert_match version.to_s, shell_output("#{bin}/craftbag-mcp --version")
  end
end
