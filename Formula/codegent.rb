class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.2/codegent-darwin-arm64"
      sha256 "08c197eee49f53bab9df7b5f8a426a2d40c9d05eb8859924a0ea2d780662d8fe"
    else
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.2/codegent-darwin-x64"
      sha256 "37b0563b022574e25c3c277f04f2af3ac05540e5fc76b6f00df3f407c8428e1b"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "codegent-darwin-arm64" => "codegent"
    else
      bin.install "codegent-darwin-x64" => "codegent"
    end
  end

  test do
    system "#{bin}/codegent", "--version"
  end
end
