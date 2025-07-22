class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.5/codegent-darwin-arm64"
      sha256 "aa68aef5d4b4589ce29ffd890ce692407fa7785f093b661ab4dfaa6ee6250b82"
    else
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.5/codegent-darwin-x64"
      sha256 "016babbfcfbd2fb304e2a7406440cdfa88b9b594d0bbf7c929645c4317f9e638"
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
