class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.4"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.4/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "21db81d996f9689f5b5bb06024704b8b4089855436327243889cd235be35f2fd"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.4/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "03f4182a671a6ef0caed64081c018a4e8e1630dc9fc7f3d87a285f14813c315b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.4/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "9e0a2fcdce9a89991423758fe475095731802e0526a1b471e6d191b1df1affed"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.4/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "c292977b50fd060c4901876a99135fc61f6bb9da6b579adbd0e794b07774c4c0"
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
