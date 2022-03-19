class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.1"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.1/dtlv-0.6.1-ubuntu-latest-amd64.zip"
    sha256 "35dfb81b514739cf35a376bed2e0a480a7054612072beed17464c5283445f9d4"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.1/dtlv-0.6.1-macos-latest-amd64.zip"
    sha256 "f552d8927490aee36817bb3fc39757b04ec1b07e5ce8db0f1f51ec01bdab9b55"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
