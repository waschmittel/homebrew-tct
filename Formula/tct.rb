class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.4.0/tct-1.4.0-macos-aarch64"
      sha256 "df689b1b098466fdfdf55badb970d4ebfc58612bbb64bf31dcc266419d551668"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.4.0/tct-1.4.0-linux-amd64"
      sha256 "92e0a8dff76372826ad84fefe521f467b8da3c8377832e5e2ab98b4a38e38551"
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
