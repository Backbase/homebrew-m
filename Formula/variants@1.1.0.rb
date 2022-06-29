class VariantsAT110 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants.git"
  url "https://github.com/backbase/variants.git", tag: "1.1.0"
  version "1.1.0"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
