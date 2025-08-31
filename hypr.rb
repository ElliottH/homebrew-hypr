class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  url "https://github.com/ElliottH/hypr/archive/refs/tags/0.0.1.zip"
  sha256 "229eeda3799a8ddb9bdf11d88ccaf05fc7d32b6173b660576c96d7a5ab3368c8"
  head "https://github.com/ElliottH/hypr.git"

  def install
    ENV.deparallelize
    system "swift", "build", "-c" "release"
    system "codesign", "-fs", "-", "#{buildpath}/.build/release/hypr"
    bin.install "#{buildpath}/.build/release/hypr"
  end

  service do
    run [opt_bin/"hypr"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
  end
end
