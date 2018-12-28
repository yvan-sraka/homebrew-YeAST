class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.9.0.tar.gz"
  sha256 "6c146f27bc41eb5279caf4274672214566327b8d79fef477c322779fe3211fde"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
