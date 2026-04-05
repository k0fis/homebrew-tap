cask "kfs-md" do
  version "0.5.3"
  sha256 "153385931060193694377ac23fb52580262b8b3db161ee5770b28280f74e4f38"

  url "https://github.com/k0fis/kfs-md/releases/download/v#{version}/kfs-md-macos-arm64.dmg"
  name "kfs-md"
  desc "Markdown and plain text viewer with dark terminal aesthetic"
  homepage "https://github.com/k0fis/kfs-md"

  depends_on macos: ">= :ventura"

  app "kfs-md.app"

  zap trash: [
    "~/Library/Preferences/eu.kofis.kfs-md.plist",
    "~/Library/Saved Application State/eu.kofis.kfs-md.savedState",
  ]
end
