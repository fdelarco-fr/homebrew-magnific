cask "magnific" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.6"
  sha256 arm:   "1a5a6472f24bd868bb3cf019f4537be18edf6726ab0341699e2cb78a158383c3",
         intel: "33d259c3a687c50978fd059da069b0f5aa75f25b20682bb7368ff936499bdef9"

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
