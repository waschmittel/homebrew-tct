class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.11.2"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.2/tct-1.11.2-macos-aarch64"
      sha256 "8f6b4655cef6cf933042131d3250573abba9f2229e5d3ba16c24efd95812326a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.2/tct-1.11.2-linux-amd64"
      sha256 "d1aaa0116f080da29b3cab7f19a25d4e44c6aee43c7619ba8303451aef933c43"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.2/tct-1.11.2-linux-arm64"
      sha256 "445036cf5ba951c7601bf7b488dc3ba8735406cd2a376ba65f20e107212f7932"
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
