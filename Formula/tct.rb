class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.11.1"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.1/tct-1.11.1-macos-aarch64"
      sha256 "44eee8d2dbe5c7ab9cc46293c102d375267d4a093424063bc38620a6aac43da4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.1/tct-1.11.1-linux-amd64"
      sha256 "b37fc0011499291a6a6b8d7099e12d234e68bff6ec5ed51b30d625897a9c2025"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.1/tct-1.11.1-linux-arm64"
      sha256 "1b63dbbbe9c9aeb36772ba325124bc34d963e512c5bc66fc8099c07c4337f6c7"
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
