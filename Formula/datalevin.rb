class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.18"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.18/dtlv-0.6.18-ubuntu-latest-amd64.zip"
    sha256 "4a10c12641e0ec501783531ceccdd4fa897d312b15cf373a1965a7babc07424f"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.18/dtlv-0.6.18-macos-latest-amd64.zip"
    sha256 "33b6bd7e9d479b23371f79ef8ad9a28cee09053a0a656d51ca5bcc38053245f8"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
