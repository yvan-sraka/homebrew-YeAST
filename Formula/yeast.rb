class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.12.0.tar.gz"
  sha256 "6d6bbb0c94b3f495325dbe4faea2b86893cf28828e8e109ced127881c840ce2c"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "kombucha"
  end
end
