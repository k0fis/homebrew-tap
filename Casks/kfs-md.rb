cask "kfs-md" do
  version "0.4.1"
  sha256 "359cefb60a58d50f7503e7f5394085a1915bbe7ba865812e65323291de83377c"

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
