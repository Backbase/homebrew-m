class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.0"
    sha256 cellar: :any_skip_relocation, monterey: "26d438b340f35a1a32544eb9ae83df0c63677ece1be5aebd9558c53e214b7a46"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "26d438b340f35a1a32544eb9ae83df0c63677ece1be5aebd9558c53e214b7a46"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
