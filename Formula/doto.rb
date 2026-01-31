# typed: false
# frozen_string_literal: true

class Doto < Formula
  desc "The comment mark searching engine used under doto cli tool"
  homepage "https://github.com/utakotoba/doto"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/utakotoba/doto/releases/download/v#{version}/doto-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5d6adb9a315d833be5ba89547c145b84b0beff5e19c1c72d5bb89ca428bfc29a"
    end

    on_intel do
      url "https://github.com/utakotoba/doto/releases/download/v#{version}/doto-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9104d0b2465a0ddb23047dd2d801533e5c93806985331ebfb1303d5d765eec06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/utakotoba/doto/releases/download/v#{version}/doto-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae14a70e88e7e665efafb06fa4f270977d1b2e2ad71dc1c2406f3f17d89fb4ef"
    end
  end

  def install
    bin.install "doto"
  end

  test do
    system "#{bin}/doto", "--version"
  end
end
