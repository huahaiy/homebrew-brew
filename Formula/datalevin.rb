class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.4/dtlv-0.6.4-ubuntu-latest-amd64.zip"
    sha256 "f91f33a3316552ddc22bf00ffb64d4da92f00bb30a89342df9f2ee563796844d"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.4/dtlv-0.6.4-macos-latest-amd64.zip"
    sha256 "8b1bb8d5cb2592e6da592bc6491d6df372bcca61d5de0c2b813d8ad1b5df460d"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
