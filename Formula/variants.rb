class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.3.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.3.0"
    sha256 cellar: :any_skip_relocation, x86_64_dunno: "9f2428fe65bcee0b83509f8a13045c04354cad6566d8cef0cd49ef2743382108"
    sha256 cellar: :any_skip_relocation, arm64_dunno: "9f2428fe65bcee0b83509f8a13045c04354cad6566d8cef0cd49ef2743382108"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
