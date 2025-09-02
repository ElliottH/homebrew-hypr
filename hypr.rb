class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  url "https://github.com/ElliottH/hypr/archive/refs/tags/0.0.3.zip"
  sha256 "c99cd0c39e836dd3ce82cd54f85a37a5e291dde9e15e31c95af8d581ed2c9504"
  license "MIT"

  depends_on xcode: ["15.2", :build]
  depends_on :macos
  depends_on macos: :sonoma

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--static-swift-stdlib"
    bin.install "#{buildpath}/.build/release/hypr"
  end

  service do
    run [opt_bin/"hypr"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
  end
end
