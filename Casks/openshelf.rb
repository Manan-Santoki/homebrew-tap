cask "openshelf" do
  version "1.10.0"
  sha256 "86912d997f267f887a8a6adb8cfcc63a5d1f45c9276e136551a615a5f8670a93"

  url "https://github.com/Manan-Santoki/OpenShelf/releases/download/v#{version}/OpenShelf-#{version}.dmg"
  name "OpenShelf"
  desc "Menu bar shelf and drag-and-drop file converter"
  homepage "https://openshelf.space/"

  livecheck do
    url "https://raw.githubusercontent.com/Manan-Santoki/OpenShelf/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenShelf.app"

  uninstall quit: "app.openshelf.OpenShelf"

  zap trash: [
    "~/Library/Application Support/OpenShelf",
    "~/Library/Caches/app.openshelf.OpenShelf",
    "~/Library/HTTPStorages/app.openshelf.OpenShelf",
    "~/Library/Preferences/app.openshelf.OpenShelf.plist",
  ]
end
