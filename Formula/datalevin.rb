class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.8"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.8/dtlv-0.6.8-ubuntu-latest-amd64.zip"
    sha256 "58aeeae832151d8257c18113147060627aa1f9c2d1a3c03d794628a13fed4860"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.8/dtlv-0.6.8-macos-latest-amd64.zip"
    sha256 "79174e60e10bf6aec0269900f5724dd57bb5c8af1efb90b7677b9f172130f269"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
