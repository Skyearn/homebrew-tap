cask "bleunlock" do
  version "1.14.3"
  sha256 "ae6515a00f790f8018d90e50877a118e9e6d979107a780aa147045532ff5d9e5"

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
