class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.29"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.29/dtlv-0.6.29-ubuntu-latest-amd64.zip"
    sha256 "8e12107763577ec55c7b8d814af911a7159f446764ba253451842038f63a4d78"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.29/dtlv-0.6.29-macos-latest-amd64.zip"
    sha256 "fa75ce1fdd33dcb806ba9da5656540f696f8b36cefdad08393cde5f86d001430"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
