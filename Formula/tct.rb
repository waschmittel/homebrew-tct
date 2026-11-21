class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.11.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.0/tct-1.11.0-macos-aarch64"
      sha256 "fa2f3cafcc940b41cb40889c1e66ba85617825909058c503453e599d713f81b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.0/tct-1.11.0-linux-amd64"
      sha256 "eafc69d49160222ff6db865b01c4b349a8af2af162a632db6391d293a22f9932"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.11.0/tct-1.11.0-linux-arm64"
      sha256 "84a86c51e688f17fd24b4a6a00bd45203af1ceb4be609b47f15b207914e279ba"
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
