class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  url "https://github.com/ElliottH/hypr/archive/refs/tags/0.0.2.zip"
  sha256 "901af6b03f9477f037715e22bab7cb59b7038479b0cb1fab774682a214703fe8"
  head "https://github.com/ElliottH/hypr.git"

  def install
    ENV.deparallelize
    system "swift", "build", "-c", "release"
    system "codesign", "-fs", "-", "#{buildpath}/.build/release/hypr"
    bin.install "#{buildpath}/.build/release/hypr"
  end

  service do
    run [opt_bin/"hypr"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
  end
end
