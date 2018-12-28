class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.17.0.tar.gz"
  sha256 "48b59f0536098798897e7068a4d5c3c12909dca013f5aec7993a58afcae5bc18"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
