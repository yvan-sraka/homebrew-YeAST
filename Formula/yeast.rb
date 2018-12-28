class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.20.0.tar.gz"
  sha256 "006407669807106e7655b4271b99d487c68b7fa05a55954e71ec0040707420d4"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
