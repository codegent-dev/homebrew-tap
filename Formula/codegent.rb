class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.4/codegent-darwin-arm64"
      sha256 "85ee2364be291b2ac180b1338dd0552dea53293645ac097e16e0b252d452d9dc"
    else
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.4/codegent-darwin-x64"
      sha256 "34b89ba94fb95aecda3fa39cadfcde9cc469ee632fd8511d2fe9b3083e7c6051"
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
