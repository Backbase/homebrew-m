class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.1"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.1"
    sha256 cellar: :any_skip_relocation, monterey: "390266c6de8abd359fae38304c6ba8c8930c48c6ea062e4954ccf38e7d6d405e"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "390266c6de8abd359fae38304c6ba8c8930c48c6ea062e4954ccf38e7d6d405e"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
