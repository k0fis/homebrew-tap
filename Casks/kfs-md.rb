cask "kfs-md" do
  version "0.2.0"
  sha256 "36495239b6d51d25f127abd341e895996d65df68e85aed35fc8eae4557e8eb62"

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
