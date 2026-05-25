class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  version "1.0.0"
  sha256 "b904ea2399de3ce09083a7f44b24fd9c7defeb8f4ca3dd8bad2a372eff216ba7"
  url "https://github.com/ElliottH/hypr/releases/download/#{version}/hypr-#{version}-macos.zip"
  license "MIT"

  depends_on :macos
  depends_on macos: :big_sur

  def install
    bin.install "hypr"
  end

  service do
    run [opt_bin/"hypr"]
    keep_alive true
    working_dir HOMEBREW_PREFIX
  end
end
