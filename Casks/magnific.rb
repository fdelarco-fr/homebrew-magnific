cask "magnific" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "aa255c639a30a0c8d44c6cfbca6129dc120d81b8fc2a4a1501b002bd6cabfa4a",
         intel: "bdb15fde8e0515a0f82d472d7c4a73b5b0b1fe82a5b7ad9c5bd88327b544a8a4"

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
