class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.20"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.20/dtlv-0.8.20-ubuntu-latest-amd64.zip"
    sha256 "1b5e66f33fab75d0fad2a20ad5de16b9d7213f0485a8eb7ccae5aef3a7a2aadf"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.20/dtlv-0.8.20-macos-latest-aarch64.zip"
      sha256 "e1321ea5bd2b418506107dc5b6727179c3a14fb270b2f6f0484030b378bf0b87"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.20/dtlv-0.8.20-macos-latest-amd64.zip"
      sha256 "643c5052c522965b7ecff57bc5196c8180b992dacafc8efcd56166c9109aedf9"
    end
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
