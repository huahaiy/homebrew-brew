class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.0"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.0/dtlv-0.6.0-ubuntu-latest-amd64.zip"
    sha256 "fdca0f1e5c76fc4dd35eb2809f126588f17934d8e317e2c1f9e117ee654d5edb"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.0/dtlv-0.6.0-macos-latest-amd64.zip"
    sha256 "055f96dd3d617205f54d7ee88eaf3abd0506afbb77858bb76f88c18b845b9915"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
