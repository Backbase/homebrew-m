class VariantsAT121 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.2.1"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.2.1"
    sha256 cellar: :any_skip_relocation, monterey: "1fdc9e983ffc4b3a094d5f313d1a115227284cd0666bba8d0ee857a5d5856774"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "1fdc9e983ffc4b3a094d5f313d1a115227284cd0666bba8d0ee857a5d5856774"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
