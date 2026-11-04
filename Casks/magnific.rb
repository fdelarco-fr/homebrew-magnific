cask "magnific" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.3"
  sha256 arm:   "bbb1ab98f07717a4ed892b2963cbb013e3e44dec4063ffa0e1fc131a84f2fad2",
         intel: "b949548ec3e5c1b90c4514e4678c86bffa29be225cdf02d1cc337d3bbce0863b"

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
