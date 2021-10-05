class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.25"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.25/dtlv-0.5.25-ubuntu-latest-amd64.zip"
    sha256 "aa8e23fed26241c88dc020adf216d01644869b1a30eb96c8ac9db6d72e1b6e4c"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.25/dtlv-0.5.25-macos-latest-amd64.zip"
    sha256 "392b1ad7d913d7d9c69c296af73a7353bfcdb7c2e4346be98fa76075dddc364b"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
