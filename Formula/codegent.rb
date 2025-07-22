class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  url "https://github.com/mattapperson/codegent/releases/download/v1.0.0/codegent-darwin-x64"
  sha256 "37b0563b022574e25c3c277f04f2af3ac05540e5fc76b6f00df3f407c8428e1b"
  version "1.0.0"

  def install
    bin.install "codegent-darwin-x64" => "codegent"
  end

  test do
    system "#{bin}/codegent", "--version"
  end
end
