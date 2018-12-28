class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.6.0.tar.gz"
  sha256 "6f2902bb3c81fe4143a4bde5c8aaed5233553ab2149a3f3db226e7a86562d270"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
