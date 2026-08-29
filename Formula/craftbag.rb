class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.1.1"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.1/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "3e24621c3718386ce8318a9f6679250b503a9b7505fbfca56ec8fdffcb287f6c"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.1/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "fe89a9ac3c69f8b5fcdbaecf291a35d37cfa48f54d60456b37077a1a55058982"
    end
  end

  on_linux do

    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.1.1/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d190f684e8f2db4ea3e05750bd0b5b841f2eec1ec3b1ec1a2dc86a39269fb974"
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
