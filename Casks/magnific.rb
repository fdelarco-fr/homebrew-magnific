cask "magnific" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.4"
  sha256 arm:   "4bbef76e1ab2ec0c9683567872e682883bb8b67dd1cd1467afb8104fcfdc2e1e",
         intel: "de59e92f026362158e14eea0279e99ddf1093b8709613418e84ea2fd48e1a9cf"

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
  depends_on macos: :monterey

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
