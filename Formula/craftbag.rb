class Craftbag < Formula
  desc "Discover and load Agent Skills for CLI and MCP hosts"
  homepage "https://github.com/craftbag/craftbag"
  version "0.3.3"
  license "Apache-2.0 OR MIT"

  on_macos do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.3/craftbag-aarch64-apple-darwin.tar.xz"
      sha256 "e56bd733f1738ee66e95fc9aaea44900e83440942be7fb3352d991dfa4680d0e"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.3/craftbag-x86_64-apple-darwin.tar.xz"
      sha256 "2df0cb85c29659990863e1e9a709b81d8305c3aa8f161c57f7f2fb048418d538"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.3/craftbag-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "8ec895c316b897c49c359190dcd4cac2468e2bfaf3190970fd662a092eecf361"
    end
    on_intel do
      url "https://github.com/craftbag/craftbag/releases/download/v0.3.3/craftbag-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ef908a1fe13330da3c60b7bf0670cf9503c0b3434cede97fc3e8beed6c9faddf"
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
