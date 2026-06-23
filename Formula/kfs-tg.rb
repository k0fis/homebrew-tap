class KfsTg < Formula
  desc "Minimalist TUI Telegram client"
  homepage "https://github.com/k0fis/kfs-tg"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-arm64"
      sha256 "ded9c7e3ba73656a072e5f1a2b62e867bb735b4ff3b9bf92f7119d54848b7573"
    else
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-amd64"
      sha256 "c4edbca2f53ba7bef4914b5647eb902198080c5015a80d07585f4d56613e11f8"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-linux-amd64"
    sha256 "fe9bcf67e252c01d542ad665f247f1ea23408b7755cb4533f92595b40b1cf4f9"
  end

  def install
    bin.install Dir["kfs-tg*"].first => "kfs-tg"
  end

  test do
    assert_match "kfs-tg", shell_output("#{bin}/kfs-tg --version")
  end
end
