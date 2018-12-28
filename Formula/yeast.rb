class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.4.0.tar.gz"
  sha256 "12cb4d845e1c22c565b4d8291d5a758e83b41081c1c0cf777f57008cad66fff4"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
