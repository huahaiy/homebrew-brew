class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.18"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.18/dtlv-0.9.18-ubuntu-latest-amd64.zip"
    sha256 "7a4df98d855a92cf64a22e8fdc47b7b259a72098030ebc3b4f2ecd53a81f54c9"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.18/dtlv-0.9.18-macos-latest-aarch64.zip"
      sha256 "29a66ed93a582f2cd2558766c321317852c35f48f03a7c759268656906b6e09e"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.18/dtlv-0.9.18-macos-latest-amd64.zip"
      sha256 "8a17edbc88fa26ebddd4e44696269a14b2ff1fdb1ad5d169551c8b86706e8fd8"
    end
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
