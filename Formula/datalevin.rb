class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.31"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.31/dtlv-0.5.31-ubuntu-latest-amd64.zip"
    sha256 "a6813c259ab1519d579db96cae11d962bda51dd236d3bd70f8593ee9af53c784"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.31/dtlv-0.5.31-macos-latest-amd64.zip"
    sha256 "677840c1be82a6250765a677791d41127d8abb571b7a92840536c44e1e9f12b7"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
