class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.2.0"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.2.0"
    sha256 cellar: :any_skip_relocation, monterey: "aa36b5fe263e7c86a7603e7dd659ed4528d7fe59277124734309fe2183cdc9c5"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "aa36b5fe263e7c86a7603e7dd659ed4528d7fe59277124734309fe2183cdc9c5"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
