cask "bleunlock" do
  version "1.13.5"
  sha256 "1785559809645d591f89fc99fb7fca8ae6e903633280cd37dfdce0e8afd9f4c5"

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
