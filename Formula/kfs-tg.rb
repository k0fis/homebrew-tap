class KfsTg < Formula
  desc "Minimalist TUI Telegram client"
  homepage "https://github.com/k0fis/kfs-tg"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-arm64"
      sha256 "30a4948ab1ba3862b9b598c153e003061be0cac316cedead295e8ac51c5357d7"
    else
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-amd64"
      sha256 "8e66ee933496577ad76301f166953c81175e8837e285a70a566360d48080be30"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-linux-amd64"
    sha256 "c414fad3948b2dc9aeb0109f2875203c152b8fb83e0eccab53b8a0aa62e131d3"
  end

  def install
    bin.install Dir["kfs-tg*"].first => "kfs-tg"
  end

  test do
    assert_match "kfs-tg", shell_output("#{bin}/kfs-tg --version")
  end
end
