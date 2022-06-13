class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.6.14"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.6.14/dtlv-0.6.14-ubuntu-latest-amd64.zip"
    sha256 "f74cf1a91bf75300e72bbf2c03b7384c38be1cc6484ec832cfab99d5c41d4073"
  else
    url "https://github.com/juji-io/datalevin/releases/download/0.6.14/dtlv-0.6.14-macos-latest-amd64.zip"
    sha256 "6d370f657a75bf12a9c2762e2a23b6db49fcee2a05ff84592969bf1c6a59cd56"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
