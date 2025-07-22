class Codegent < Formula
  desc "AI-powered workflow orchestration CLI"
  homepage "https://codegent.dev"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.6/codegent-darwin-arm64"
      sha256 "58142c7f5035a938d242614c688bf14f730d0fc5f82d1ca16cc10e12435a6291"
    else
      url "https://github.com/codegent-dev/cli-releases/releases/download/v0.0.6/codegent-darwin-x64"
      sha256 "c08b7f96d18d1644bebd1df66bbb49ad5926fed462d754e9455cc88d24c72daf"
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
