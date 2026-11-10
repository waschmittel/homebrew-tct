class Tct < Formula
  desc "Terminal Card Tracker - a keyboard-driven TUI Trello clone"
  homepage "https://github.com/waschmittel/tct"
  version "1.6.0"

  on_macos do
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.6.0/tct-1.6.0-macos-aarch64"
      sha256 "7ee52fee4c8ea4701ddf8c5dbbc0f8f691a05c89a31c9268655856fbe99e6b07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/waschmittel/tct/releases/download/v1.6.0/tct-1.6.0-linux-amd64"
      sha256 "2b050f78fd8cb80260dff067c2a2855952965d21b3a88be1f981b64d60feea98"
    end
    on_arm do
      url "https://github.com/waschmittel/tct/releases/download/v1.6.0/tct-1.6.0-linux-arm64"
      sha256 "cd77d60422f0d83bdecffc3a17e4e9df994862f1e3205791c939fc0def7edae1"
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
