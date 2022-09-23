class VariantsAT111 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.1"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.1"
    sha256 cellar: :any_skip_relocation, monterey: "52a727603ccf6fbb36a103c18ba087959d2c5b41cf670569c5a178d9044ba46b"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "52a727603ccf6fbb36a103c18ba087959d2c5b41cf670569c5a178d9044ba46b"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
