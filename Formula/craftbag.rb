class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.1.2"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.2/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "f938c9db7c3092e76fe5c1e0c4cfaf8ff3d1f1c9f55a55f9a1da85c1c3a0e1fa"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.2/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "f9be4326a2e80b7a5d6b1bf112f13b0c0cfce137323cb9990ced08d8d0d2f55a"
    end
  end

  on_linux do

    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.2/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "5837e84b9638caa97a6daf85a15c0b20ef91db1a9c2ca3f66e34f8ba71a3062c"
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
