cask "bleunlock" do
  version "1.14.0"
  sha256 "19aff18fb6cf1fbf98e65a1fe301641d86be16a30f4eb7016ab8bb8717596dc1"

  url "https://github.com/Skyearn/BLEUnlock/releases/download/v#{version}/BLEUnlock-v#{version}.dmg"
  name "BLEUnlock"
  desc "Lock and unlock your Mac by proximity of Bluetooth Low Energy devices"
  homepage "https://github.com/Skyearn/BLEUnlock"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BLEUnlock.app"

  caveats do
    <<~EOS
      BLEUnlock is not notarized with Apple Developer ID in this fork.
      On first launch, macOS may require you to Control-click the app and choose Open,
      or approve it in System Settings > Privacy & Security.
    EOS
  end

  zap trash: [
    "~/Library/Application Scripts/jp.sone.BLEUnlock",
    "~/Library/Preferences/jp.sone.BLEUnlock.plist",
  ]
end
