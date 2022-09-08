class VariantsAT111 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.1-fat"

  bottle do
    rebuild 1
    root_url "https://github.com/Backbase/variants/releases/download/1.1.1-fat"
    sha256 cellar: :any_skip_relocation, monterey:       "37a6e60317886bf704f0313adc850f499b5acf4c7d76f82c8f7df9bcd0118d75"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "37a6e60317886bf704f0313adc850f499b5acf4c7d76f82c8f7df9bcd0118d75"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    a = [[:a, 1], [:b, 2]]
    a.to_h.assert == { a: 1, b: 2 }
  end
end
