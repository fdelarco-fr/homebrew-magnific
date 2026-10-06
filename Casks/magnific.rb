cask "magnific" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "5b5775c2cfafc9e53f70319e6084314a7f71f3998672cfc1de71f6d5545f997f",
         intel: "589efdd816c2688b340abc96d65bf94b0adfbc01e7c54c00d98ab82c156ea91a"

  url "https://cdn.magnific.com/ait/magnific-desktop/#{version}/macos-#{arch}.dmg"
  name "Magnific"
  desc "AI image, video, audio and 3D creation tools"
  homepage "https://www.magnific.com/desktop"

  livecheck do
    url "https://cdn.magnific.com/ait/magnific-desktop/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Magnific.app"

  zap trash: [
    "~/Library/Application Support/com.freepik.magnific.desktop",
    "~/Library/Caches/com.freepik.magnific.desktop",
    "~/Library/Containers/com.freepik.magnific.desktop.MagnificIntents",
    "~/Library/Containers/com.freepik.magnific.desktop.MagnificWidgets",
    "~/Library/Group Containers/CCAL5Z426N.com.magnific.desktop.shared",
    "~/Library/HTTPStorages/com.freepik.magnific.desktop",
    "~/Library/Logs/com.freepik.magnific.desktop",
    "~/Library/Preferences/com.freepik.magnific.desktop.plist",
    "~/Library/Saved Application State/com.freepik.magnific.desktop.savedState",
    "~/Library/WebKit/com.freepik.magnific.desktop",
  ]
end
