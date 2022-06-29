class VariantsAT110 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants.git"
  url "https://github.com/backbase/variants.git", tag: "1.1.0"
  version "1.1.0"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "c7cb9e00a641ebb41b1125bbc9dcaa83e7f701284b94cadc13234b6e02bd0f74"
    sha256 cellar: :any_skip_relocation, monterey:       "7fd47a5be03b90e53b4e925585a29402e05719e44448554f38fffeb1d063354f"
  end

end