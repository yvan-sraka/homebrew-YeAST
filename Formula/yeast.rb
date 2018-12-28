class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.8.0.tar.gz"
  sha256 "4f31a78fbbe18474459a807ea91180ad52ca45278dec3852294cdcc767e28fa4"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
