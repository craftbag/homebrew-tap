class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.0"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.0/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "ed93222c7d2b2d9a5c43b9656fb38287604234885f86acbd131f51fbc3391a79"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.0/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "50f0959355a2400d10d8449280339936cd3d47bea25e5c09b5752703fdd792a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.0/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "256be3c6b368ebf91a85c8e23e2632ad87c9e4e3bccb102c6f7baadaeb1e8270"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.0/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "72690856996b93a01dedaddcfd964be1ece3f65030a2b8768d5a0f177f8e7d24"
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
