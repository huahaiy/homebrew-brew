class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.7/dtlv-0.8.7-ubuntu-latest-amd64.zip"
    sha256 "d8a91d52e441d1cadf22d619c235364bdcf539d4d8d21abde4deee2a7e63d115"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.7/dtlv-0.8.7-macos-latest-aarch64.zip"
      sha256 "93efcb5766442a0c8e85efc5b272511729a046f4bdeda58b63ef6f0c0b1908b9"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.7/dtlv-0.8.7-macos-latest-amd64.zip"
      sha256 "936c8da560d9a58834bb289f13c6ef72f9b9f606a8dc3e25040cb8f649e77b27"
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
