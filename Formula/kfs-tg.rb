class KfsTg < Formula
  desc "Minimalist TUI Telegram client"
  homepage "https://github.com/k0fis/kfs-tg"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-arm64"
      sha256 "0f910e2f204e97d82f8965863fcf7d89ca00cec6df565bfcaacc584b91a2b621"
    else
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-amd64"
      sha256 "c99eb14d067ac31b782cea3070820b99172a84be592483bd55bfde20c5758979"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-linux-amd64"
    sha256 "985f384c95983205b4f036b5d5a2775d014ea8aabbe326e384e1dfab63d5c95f"
  end

  def install
    bin.install Dir["kfs-tg*"].first => "kfs-tg"
  end

  test do
    assert_match "kfs-tg", shell_output("#{bin}/kfs-tg --version")
  end
end
