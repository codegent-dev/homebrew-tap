class Codegent < Formula
  desc "TypeScript monorepo for workflow orchestration with AI agents and command execution"
  homepage "https://github.com/mattapperson/codegent"
  url "https://github.com/mattapperson/codegent/releases/download/v{VERSION}/codegent-darwin-x64"
  sha256 "{SHA256}"
  license "MIT"

  def install
    bin.install "codegent-darwin-x64" => "codegent"
  end

  test do
    system "#{bin}/codegent", "--version"
  end
end