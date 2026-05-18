class KfsSquidEditor < Formula
  desc "TUI editor for Squid proxy configuration"
  homepage "https://github.com/k0fis/kfs-squid-editor"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-squid-editor/releases/download/v#{version}/kfs-squid-editor-macos-arm64"
      sha256 "fc7b88e157ab53d74536ecedc7c6f191d8e2a30d822984f252ae33c2bfda4ff3"
    else
      url "https://github.com/k0fis/kfs-squid-editor/releases/download/v#{version}/kfs-squid-editor-macos-amd64"
      sha256 "328d95768ddddae082424bd49fead93e4ca40c225f9cab8f0379f57505205dd2"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-squid-editor/releases/download/v#{version}/kfs-squid-editor-linux-amd64"
    sha256 "de779782bd567f9063072803b2e53b27b48edba59f6876122a43c2e5939bac53"
  end

  def install
    bin.install Dir["kfs-squid-editor*"].first => "kfs-squid-editor"
  end

  test do
    assert_match "kfs-squid-editor", shell_output("#{bin}/kfs-squid-editor --version")
  end
end
