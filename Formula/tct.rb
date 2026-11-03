class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.5.1"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.5.1/tct-1.5.1-macos-aarch64"
      sha256 "695133ec88374bd7e20de4f3ccfce632c78c2f1f136a6023c2a2f4f71ea88eb1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.5.1/tct-1.5.1-linux-amd64"
      sha256 "82172f85634a2c88615e014125158f2ab03bfe188676425d11f1ab1496a96214"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.5.1/tct-1.5.1-linux-arm64"
      sha256 "85d4d10818ff1c7899d110e4829656c296e3fb652e1b35a614ad7393f368502f"
    end
  end

  def install
    bin.install Dir["tct-*"].first => "tct"
  end

  test do
    assert_predicate bin/"tct", :executable?
    system bin/"tct", "--help"
  end
end
