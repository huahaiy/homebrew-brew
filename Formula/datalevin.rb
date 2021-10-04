class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.23"
  license "EPL-1.0"

  bottle :unneeded

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.5.23/dtlv-0.5.23-ubuntu-latest-amd64.zip"
    sha256 "1d13da8757b493d5d7c4d5e9b66a7b4ee7c1309fc5a4c0eefe9b41bf51b7016e"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.5.23/dtlv-0.5.23-macos-latest-amd64.zip"
    sha256 "0ae9d58a5e4d132abb71cc883ffea5210cbf4ccb4e0f3936ff2aaae4c4dff594"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
