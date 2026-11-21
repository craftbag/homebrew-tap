class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.2"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.2/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "ad885705d0538884040a54eb48d30d5b4ebb695c06d577fb17a86a3befdc5c86"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.2/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "2539ef864cf04931b6fd416f3f13811e0283b1601a5fd97cf52ebf9747239baa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.2/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "3534f38b82a724638509b150c8e91c4727430f8a2834634aa9416582619bae8e"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.2/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "73e027e3defe9182f806c8fc1ef6f558079f7e139e5ceed11849849e3f54d388"
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
