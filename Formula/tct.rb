class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.10.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.10.0/tct-1.10.0-macos-aarch64"
      sha256 "6a8d1f10bdc510213d39625502013c0890bfc4a225a93019c706c7e6bfca3eb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.10.0/tct-1.10.0-linux-amd64"
      sha256 "8d730a8488a2f5b02520d1ba9925b53d05565799dcc52efa7e0cde17dfa37167"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.10.0/tct-1.10.0-linux-arm64"
      sha256 "d5657a732db77078f2cd9af2b03e366a79f4445fa71189f1eded9f1b1f0a0be9"
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
