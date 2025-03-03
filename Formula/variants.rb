class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.2.1"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.2.1"
    sha256 cellar: :any_skip_relocation, monterey: "4a88b8a7c652b68dbccf25ebde7d89c04da36b6975261a921fede775287275b5"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "4a88b8a7c652b68dbccf25ebde7d89c04da36b6975261a921fede775287275b5"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
