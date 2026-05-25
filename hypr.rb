class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  version "0.0.5"
  sha256 "e904157820da538f575bc5963787e93b5973ab64853195e2adb7d9535a38a4a9"
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
