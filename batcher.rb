# This file was generated by GoReleaser. DO NOT EDIT.
class Batcher < Formula
  desc "batcher does mass database updates and deletes in a database-friendly, concurrent manner"
  homepage ""
  version "0.5.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.4/batcher_0.5.4_Darwin_x86_64.tar.gz"
    sha256 "46e9eba9049f03136c58588c1d9c564bb53c17543977e6b1a43a2ff9796cecab"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.4/batcher_0.5.4_Linux_x86_64.tar.gz"
      sha256 "2f6a4bc4026114bfc5ef5329871248b6421dbfccef0a65010afcbb34fac88e22"
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
