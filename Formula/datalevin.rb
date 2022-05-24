class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.13"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.13/dtlv-0.6.13-ubuntu-latest-amd64.zip"
    sha256 "2daf2276ddd0c39f3ddc4edd08d71f6f2f08fd033fd64ce4faf06a8f568249a9"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.13/dtlv-0.6.13-macos-latest-amd64.zip"
    sha256 "fbbf97fbb2d0b69b9af4e3ffa4d15315e247533327b7fc046ef6944c23a06236"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
