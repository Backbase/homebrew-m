class VariantsAT111 < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.1-fat"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    a = [[:a, 1], [:b, 2]]
    a.to_h.assert == { a: 1, b: 2 }
  end
end
