class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.7.0.tar.gz"
  sha256 "3f46820bc9c2be7fb4959b9ba64412cb4bf501b02105494e862684965ccd6f1d"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
