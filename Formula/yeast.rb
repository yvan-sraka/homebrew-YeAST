class Yeast < Formula
  desc "Yet Another Shell Trick"
  homepage "https://github.com/yvan-sraka/YeAST"
  url "https://github.com/yvan-sraka/YeAST/archive/v0.3.0.tar.gz"
  sha256 "5d81162ff7da8fd2839387ceb82efee5b41038715193f8bedbc175b6a5e5964b"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
