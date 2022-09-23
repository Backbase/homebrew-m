class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.2"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.2"
    sha256 cellar: :any_skip_relocation, monterey: "e116565e41fe88c698cd598539389d0840c7f4b31e5d23d4f7f10db46a8b6bbf"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "e116565e41fe88c698cd598539389d0840c7f4b31e5d23d4f7f10db46a8b6bbf"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
