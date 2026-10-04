class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.2.1"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.1/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "d73307ab2ee2d02a9ad66301d258b3206f25dc2b5bfb89d0244743f7932bdc03"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.1/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "f8e9c7149ba5de6082780f8152403cd2815ed44afbdf38ddff359789dcfa4332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.1/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "835c1a4aa065a63e2f8015f3a60bf4d2848ab832fe41ec2c2b396c33e0ddfbd1"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.1/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e0fcb2cdb12c21c9f4a4510bcbef1600141f6e4ee2a7856e36f1a2cd8f057219"
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
