class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.9.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.9.0/tct-1.9.0-macos-aarch64"
      sha256 "9639d25fdc614fffe8aa568031086ef61dcf1584242fc3264aa8493c3ffd5fb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.9.0/tct-1.9.0-linux-amd64"
      sha256 "5e2f94305d659a8aad972b1d83c6f4d612be9cd10caa3e2499bbec77b0a3ad47"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.9.0/tct-1.9.0-linux-arm64"
      sha256 "275e40dafedc36bed6ca20cf064f63234a8e2694eef0310a1bc9c46cd052f23d"
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
