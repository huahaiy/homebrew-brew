class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.5/dtlv-0.6.5-ubuntu-latest-amd64.zip"
    sha256 "daf72e5996c75476def9376bbc17c26b81249c774c81f34d198d0deb5d44feeb"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.5/dtlv-0.6.5-macos-latest-amd64.zip"
    sha256 "e4c42cdb9c75722db3782ee30aa8f40ca8c8353778c5c2b8200a54b484982951"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
