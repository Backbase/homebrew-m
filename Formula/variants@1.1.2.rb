class VariantsAT112 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.2"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.2"
    sha256 cellar: :any_skip_relocation, monterey: "4e1a879c8f05726a3773cfbbb945af3bb90538c80727e9bd1bd206a543d4fbe0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "4e1a879c8f05726a3773cfbbb945af3bb90538c80727e9bd1bd206a543d4fbe0"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
