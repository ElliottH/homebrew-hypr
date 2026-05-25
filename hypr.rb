class Hypr < Formula
  desc "Tiny Hyper key daemon"
  homepage "https://github.com/ElliottH/hypr"
  url "https://github.com/ElliottH/hypr/releases/download/#{version}/hypr-#{version}-macos.zip"
  license "MIT"
  version "0.0.4"
  sha256 "9b110ff5a4c23bc5e0ac78acd787fc6ed55ec79cd68d44af22164dcdf1d663f3"

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
