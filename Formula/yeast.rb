class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.14.0.tar.gz"
  sha256 "523a2bfb719e640b833106a973bbe598d28cf51ca8ee8575baa2a7ba474ababf"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "kombucha"
  end
end
