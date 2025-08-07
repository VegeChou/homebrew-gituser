class Gituser < Formula
  desc "Manage multiple Git user profiles easily"
  homepage "https://github.com/VegeChou/gituser"
  url "https://github.com/VegeChou/gituser/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7f2d4a1f3c67f31467a168b83b650dd772963ab3edb0a348b2218612eb3d3dcf"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "gituser"
  end

  test do
    assert_match "gituser", shell_output("#{bin}/gituser help")
  end
end