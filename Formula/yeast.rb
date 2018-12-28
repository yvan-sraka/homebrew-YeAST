class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.19.0.tar.gz"
  sha256 "2b7d1beca5dc28a1d9aac1fc87b586e956ccf4fd9a1ec4723bb99ac6437e07a0"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
