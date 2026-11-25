class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.5"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.5/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "7cc0009f1d6768d45ee300aae0e9df589859246529ad88d3daf0c33774294b9e"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.5/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "15aa46ab8c07209a2c83369f918fe5dacd25a2bca004f7e3dd7238b43c703231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.5/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e1482259bdbb2ec322cc4d31299a325ecf495d5b8f196ccdc68ca003d62c2321"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.5/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c76e8fd467384214599be5c752f805a365e88ea61c6599efe66a5f4c592c3cf9"
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
