class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.2.2"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.2/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "6416705a293ce60d49d72769bb3310230c3631889559d01ac291b5d2186d04d7"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.2/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "1fe37ac3e709ba5797c1969f1f27ec5ea0ad4988f3c00d0ba8a79c74151fc90b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.2/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "25e478f6c7a799ca35fb5e345357b7599a0fd2baf8c4772a74495c72440e302f"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.2.2/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b235f9cd2fa3a3b857e343bc747daa475a6439a9192f0ec32a9db46640aa030d"
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
