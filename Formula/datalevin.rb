class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.7.11"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.7.11/dtlv-0.7.11-ubuntu-latest-amd64.zip"
    sha256 "7a0d1bd5c19d33566d7a56ee31d854e8dd94765445cc96545c006ade6dbbcbd2"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.7.11/dtlv-0.7.11-macos-latest-amd64.zip"
    sha256 "4220255d06edf1993d3882632b82602897aa0a083949eaf2bab089babfb246da"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
