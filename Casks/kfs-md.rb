cask "kfs-md" do
  version "0.5.5"
  sha256 "12432e9b8be8febda354efa0d1bbc189d93c0941b23efe45800cd27406f7aaac"

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
