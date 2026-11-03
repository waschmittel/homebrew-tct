class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.5.0/tct-1.5.0-macos-aarch64"
      sha256 "d27d1bd8db851026aa3b359a9f5f24cbbafb3ccbb4deb8031ad2f1503353501a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.5.0/tct-1.5.0-linux-amd64"
      sha256 "dac660bb0a993a1974e3edeff6cd9402407956cc237ecd251197fb9aba03f903"
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
