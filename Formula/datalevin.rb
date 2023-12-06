class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.23"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.23/dtlv-0.8.23-ubuntu-latest-amd64.zip"
    sha256 "49e56c4e33a1bf825313eb76e0b15f359ed6c5eb0fca7cb7e1fa586cdc6b831e"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.23/dtlv-0.8.23-macos-latest-aarch64.zip"
      sha256 "d72d5aa320156dffbd7a6da9a7d6084d19710ce4e24f6550df4e2100e3856e57"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.23/dtlv-0.8.23-macos-latest-amd64.zip"
      sha256 "9a99666b42e1e789b24cc0cfb05b30296f912f47d5d66b15cdcb70b0e67c219f"
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
