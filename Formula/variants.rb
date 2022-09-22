class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.0"
    sha256 cellar: :any_skip_relocation, monterey: "fdea512589f65be2f6767103ed3ee1ef96e5f41be81a1279dba8b516966204e1"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "fdea512589f65be2f6767103ed3ee1ef96e5f41be81a1279dba8b516966204e1"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
