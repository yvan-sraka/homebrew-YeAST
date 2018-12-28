class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.13.0.tar.gz"
  sha256 "bcb451a634544dce2766221f6fcb8d3c60969ee9db15aab37b9c0021a8785bb4"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "kombucha"
  end
end
