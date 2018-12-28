class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.15.0.tar.gz"
  sha256 "13fd83190ba4018ca22eb0db607fe7a0c1119cdd594508b74871e8714b089ce5"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "kombucha"
  end
end
