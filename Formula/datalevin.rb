class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.28"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.28/dtlv-0.6.28-ubuntu-latest-amd64.zip"
    sha256 "7ccca604c647c902667d78c4b6b78eed6e08bf079b8528153804640ad8cbf449"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.28/dtlv-0.6.28-macos-latest-amd64.zip"
    sha256 "73cbacf1a3b10a6b4c035538bfa37bdcc553980b5ce4fd4c5462ffdf5e5cf5c1"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
