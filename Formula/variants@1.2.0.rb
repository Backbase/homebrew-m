class VariantsAT120 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.2.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.2.0"
    sha256 cellar: :any_skip_relocation, monterey: "178eb4adc60db8f3dabbe918c2c5a602bd2a840283f4f23c863e7d590256fe36"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "178eb4adc60db8f3dabbe918c2c5a602bd2a840283f4f23c863e7d590256fe36"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
