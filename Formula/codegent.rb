class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.9/codegent-darwin-arm64"
      sha256 "447330c2c2444158aa9460da819ea050df5b82e10735e93cc2ad90e546dc9172"
    else
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.9/codegent-darwin-x64"
      sha256 "6561780ad6d63cbaf197fe74e84b170f449fc851c1af8fc7adb0d3905980d299"
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
