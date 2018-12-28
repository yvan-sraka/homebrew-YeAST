class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.5.0.tar.gz"
  sha256 "2833466d2277ebc92e90b8755fbcdc7c0a4ec61dba6d461537bfe8763a1760ca"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
