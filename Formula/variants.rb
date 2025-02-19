class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.3.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.3.0"
    sha256 cellar: :any_skip_relocation, x86_64_dunno: "104784ed9674f39b6155dd960714b4451127131e86807497016302ac0abc1567"
    sha256 cellar: :any_skip_relocation, arm64_dunno: "104784ed9674f39b6155dd960714b4451127131e86807497016302ac0abc1567"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
