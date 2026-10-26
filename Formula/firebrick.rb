class Firebrick < Formula
  desc "A fireproof room for your coding agent."
  homepage "https://firebrick-sandbox.dev"
  url "https://github.com/wmeints/firebrick/releases/download/v0.10.0/firebrick-v0.10.0-aarch64-apple-darwin.tar.gz"
  version "0.10.0"
  sha256 "04a8e31d89dda11f1cbff0b8c32aaa73b0e9fa2a2f99330495f59eea386d0c43"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "fbk", "fbkd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fbk --version")
    assert_match version.to_s, shell_output("#{bin}/fbkd --version")
  end
end
