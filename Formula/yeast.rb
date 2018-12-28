class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.18.0.tar.gz"
  sha256 "04a48610e212755f926dde0bb4db7a0faf6fc873eadfddd864e80ac6fcdcab18"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
