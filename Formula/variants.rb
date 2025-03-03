class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.3.1"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.3.1"
    sha256 cellar: :any_skip_relocation, x86_64_dunno: "5c919e67df6430b990a99d713560404029e3a633293cbc603e4fc6264bcd7b96"
    sha256 cellar: :any_skip_relocation, arm64_dunno: "5c919e67df6430b990a99d713560404029e3a633293cbc603e4fc6264bcd7b96"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
