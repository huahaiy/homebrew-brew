class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.3"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.3/dtlv-0.9.3-ubuntu-latest-amd64.zip"
    sha256 "7dd5928575acde92b409ea9e4211cb778830399f02e6623edca6968a4f8fc502"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.3/dtlv-0.9.3-macos-latest-aarch64.zip"
      sha256 "7ad38f1c3434104d4eebaf938d95da4c9d60647e552c14fae02008546a9eb86d"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.3/dtlv-0.9.3-macos-latest-amd64.zip"
      sha256 "4d8d40d22bc597262c08023a0426d8dca404dbb8b18ab8e2cc105a878ee267cb"
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
