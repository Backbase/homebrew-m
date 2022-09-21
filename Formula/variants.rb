class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.2.1"

  bottle do
    root_url "https://github.com/Backbase/variants/releases/download/1.1.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "c7cb9e00a641ebb41b1125bbc9dcaa83e7f701284b94cadc13234b6e02bd0f74"
    sha256 cellar: :any_skip_relocation, monterey:       "7fd47a5be03b90e53b4e925585a29402e05719e44448554f38fffeb1d063354f"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
