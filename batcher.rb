# This file was generated by GoReleaser. DO NOT EDIT.
class Batcher < Formula
  desc "batcher does mass database updates and deletes in a database-friendly, concurrent manner"
  homepage ""
  version "0.5.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.3/batcher_0.5.3_Darwin_x86_64.tar.gz"
    sha256 "9681a8de7921fd1493c19dd5ab129e1ec53163331339ec47797a661a5fb855f9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.3/batcher_0.5.3_Linux_x86_64.tar.gz"
      sha256 "7f16a42a9cb25229ec56620ac34221ceed9b193699d7f7b107430e925bab893c"
    end
  end

  def install
    bin.install "batcher"
  end

  def caveats; <<~EOS
    Execute 'batcher help' to get started
  EOS
  end

  test do
    system "#{bin}/batcher version"
  end
end
