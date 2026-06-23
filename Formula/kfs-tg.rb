class KfsTg < Formula
  desc "Minimalist TUI Telegram client"
  homepage "https://github.com/k0fis/kfs-tg"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-arm64"
      sha256 "de89a4eeebdaf21da7ff5ac05a392dcafbabb29540458a97d6222133c2a6de34"
    else
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-amd64"
      sha256 "151aa52f7ffa0427c91cf7f9f6ba10a38cba2b1ee678694b09085ed3c5d57ed3"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-linux-amd64"
    sha256 "cd7ecfb919f958b5da5c10595115eac745dbf2fb5f1147851a91bee311ce95f6"
  end

  def install
    bin.install Dir["kfs-tg*"].first => "kfs-tg"
  end

  test do
    assert_match "kfs-tg", shell_output("#{bin}/kfs-tg --version")
  end
end
