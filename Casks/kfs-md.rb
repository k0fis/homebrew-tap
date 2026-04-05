cask "kfs-md" do
  version "0.4.0"
  sha256 "7d0f632bc1a0ad988e5a0ae179ba4c46d7c725ac04cc8e8ff5dce0109623fc3f"

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
