class VariantsAT113 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.3"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.3"
    sha256 cellar: :any_skip_relocation, monterey: "50b8549393ffcbb984dcfff2e654c26084a96b52b1d1b96e401843863950ab63"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "50b8549393ffcbb984dcfff2e654c26084a96b52b1d1b96e401843863950ab63"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
