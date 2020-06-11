class Variants < Formula
  desc "Setup deployment variants and full CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants.git"
  url "https://github.com/backbase/variants.git", tag: "0.0.2"
  version "0.0.2"

  depends_on :macos
  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
