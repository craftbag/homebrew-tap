class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.2.0"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.0/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "ac5af6d3d6e2334b42dce821dae45e8e2a526a2a89206a06a18236cbb28197a9"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.0/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "d0610011d46d2cbab9279cad7c1a14960fcc781be5900da5ff847b5212736bc7"
    end
  end

  on_linux do

    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.0/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "95a558a9cce64ffdced8855a2e12c8fc83d4e31603d935b34948e8492ee96851"
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
