class Variants005 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "0.0.5"
  version "0.0.5"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
