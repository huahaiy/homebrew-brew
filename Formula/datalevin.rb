class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.21"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.21/dtlv-0.6.21-ubuntu-latest-amd64.zip"
    sha256 "5133ea8ee0d7bab6c62f4755b5c7480c8635cdeca281c806a74a625c0256106a"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.21/dtlv-0.6.21-macos-latest-amd64.zip"
    sha256 "56c0a4001aea44a6f4308caf33de98c9a4deb9a66f3b3375f78624b1f22dd18a"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
