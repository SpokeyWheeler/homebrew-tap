# This file was generated by GoReleaser. DO NOT EDIT.
class Batcher < Formula
  desc "batcher does mass database updates and deletes in a database-friendly, concurrent manner"
  homepage ""
  version "0.5.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.2/batcher_0.5.2_Darwin_x86_64.tar.gz"
    sha256 "2de1efa00d62ea1186268b34acdd3dc1179c991a8eb5f617b89233147ad9c349"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SpokeyWheeler/batcher/releases/download/v0.5.2/batcher_0.5.2_Linux_x86_64.tar.gz"
      sha256 "fe034ded5149d24607e610e96b5d9550964a4a2113a74855786637a00e5b2a78"
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
