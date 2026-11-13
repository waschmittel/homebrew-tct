class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.8.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.8.0/tct-1.8.0-macos-aarch64"
      sha256 "0aa86a472ffc7e46df3ff248399bd78b8d5c104e21f958dc97adcb7fa20d60f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.8.0/tct-1.8.0-linux-amd64"
      sha256 "3fd731f9b5b82423b95047ab0deeed462be46d61e72545617e630004d8506e1b"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.8.0/tct-1.8.0-linux-arm64"
      sha256 "dc0d263d4d8f980976954adfd10fc55baadd629639822671ca4998101267eacc"
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
