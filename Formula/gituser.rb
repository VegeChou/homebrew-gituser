class Gituser < Formula
  desc "Manage multiple Git user profiles easily"
  homepage "https://github.com/VegeChou/gituser"
  url "https://github.com/VegeChou/gituser/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "60fe62be46495251eb8a8c365020c6751d6806e7051f1abdc8918a272cffd35a"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "bin/gituser"
  end

  test do
    assert_match "gituser", shell_output("#{bin}/gituser help")
  end
end