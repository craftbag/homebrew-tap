class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.2.3"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.3/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "1fd3b36153bf03ca9b2c645cb535650db502d2b15e0eb7cee1270d372a5bb678"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.3/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "b97c424bb8266c5cf58cd48aa90c8dcc40793f17b40e0e6a832a244b5262aca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.3/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "6b6bee37d61585201e85159371a859e6ba14989fb3b6cbc63b54356947274b7a"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.3/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "817e9b7d8624b7033f89f9fd682be83cba21489807b02d8530f68e2af74de6cb"
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
