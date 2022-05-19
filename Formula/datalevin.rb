class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.12"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.12/dtlv-0.6.12-ubuntu-latest-amd64.zip"
    sha256 "f2bc090eaa9d338a4044ac43db0708075b9af78c18b63c86798d9d5f61bee806"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.12/dtlv-0.6.12-macos-latest-amd64.zip"
    sha256 "3542354ec14561eea72a3ead4de528405694386565ffe56edd2150ddb9ba25e2"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
