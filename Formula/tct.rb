class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.7.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.7.0/tct-1.7.0-macos-aarch64"
      sha256 "8adcc34038bd11671251432937b9e66ae751df996fdd14c92304e6c2c801bf08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.7.0/tct-1.7.0-linux-amd64"
      sha256 "3843a91a54cd8d177b391d77713962d64a2a0a980f7329c313486ebbdd983be6"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.7.0/tct-1.7.0-linux-arm64"
      sha256 "84fb6f85b5c8da746fd0f5ef3f738229300874c8bd69ef517e33e3a069dd369a"
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
