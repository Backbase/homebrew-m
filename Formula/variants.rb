class Variants < Formula
  desc "Setup deployment variants and fully working CI/CD pipelines for mobile projects"
  homepage "https://github.com/backbase/variants"
  url "https://github.com/backbase/variants.git", tag: "1.1.3"

  bottle do
    root_url "https://github.com/Backbase/homebrew-m/releases/download/1.1.3"
    sha256 cellar: :any_skip_relocation, monterey: "3f9c4835a604561c31bbbc8b7d4aa78141b4d4d9d200d985f5556582f09bfedd"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "3f9c4835a604561c31bbbc8b7d4aa78141b4d4d9d200d985f5556582f09bfedd"
  end

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
