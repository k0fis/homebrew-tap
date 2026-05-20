class KfsTg < Formula
  desc "Minimalist TUI Telegram client"
  homepage "https://github.com/k0fis/kfs-tg"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-arm64"
      sha256 "6bfbbebce79fc2603ccf84df58047513df2a81ccf4266536f12004c7ee78711a"
    else
      url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-macos-amd64"
      sha256 "7756258f57a50abdd983879dd7b83440505d685914b2b0345e486cb1fa88b1b2"
    end
  end

  on_linux do
    url "https://github.com/k0fis/kfs-tg/releases/download/v#{version}/kfs-tg-linux-amd64"
    sha256 "3e4872aa875e51d32a47f68e014f7d46ec9b1fe95385104099132ece28e69497"
  end

  def install
    bin.install Dir["kfs-tg*"].first => "kfs-tg"
  end

  test do
    assert_match "kfs-tg", shell_output("#{bin}/kfs-tg --version")
  end
end
