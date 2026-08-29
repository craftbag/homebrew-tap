class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.1.0"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.0/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "9420e8beee654d3837dd24c2ce485932f707f66f7db4205a36cfd0672eb9a55b"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.0/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "9638982d61d5d1f8322f22f125d11a87b518d9fe11805356d8e6a1fadce5a66d"
    end
  end

  on_linux do

    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.0/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "43c509506874f22800b57e40b216dda8ef5a47033f79c503ebad581c8f643316"
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
