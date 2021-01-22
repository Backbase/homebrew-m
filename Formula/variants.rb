class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants.git"
  url "https://github.com/backbase/variants.git", tag: "0.9.2"
  version "0.9.2"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
