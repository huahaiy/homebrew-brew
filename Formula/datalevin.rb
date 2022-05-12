class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.11"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.11/dtlv-0.6.11-ubuntu-latest-amd64.zip"
    sha256 "b8a7e079db37852ae3e9d7d2e6e2710353179aff3a4519f9f2dacf1767737702"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.11/dtlv-0.6.11-macos-latest-amd64.zip"
    sha256 "fe933417e866a18f15ae071942117c41f28121b1207baed8949362ca91356fc6"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
