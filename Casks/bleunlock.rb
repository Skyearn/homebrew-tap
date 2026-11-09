cask "bleunlock" do
  version "1.14.5"
  sha256 "875db8f8069f571349479c7bdf7a01679a3f4d5cee53fabdf9c2361c8a19568f"

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
