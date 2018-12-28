class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.16.0.tar.gz"
  sha256 "71d92da207229f72f61f62b1aa3693765c6f3d023ecc47ff43e802fd0ea4cd16"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "kombucha"
  end
end
