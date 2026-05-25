cask "hypr" do
  version "1.0.2"
  sha256 "66f7a88e8eceabf654ea438972b03ad2c4f4d318a51d1a72a0d8bf8a1437dec9"

  url "https://github.com/ElliottH/hypr/releases/download/#{version}/hypr-#{version}-macos.zip"
  name "hypr"
  desc "Tiny Hyper key daemon for macOS"
  homepage "https://github.com/ElliottH/hypr"

  app "hypr.app"

  zap trash: "~/Library/Preferences/uk.thehillarys.elliott.hypr.plist"
end
