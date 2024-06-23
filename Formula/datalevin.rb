class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.7"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.7/dtlv-0.9.7-ubuntu-latest-amd64.zip"
    sha256 "b592c8d96e0099877a0d00f26085da09ee358ccf3c3e5eccc8eb9d38af3f8a59"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.7/dtlv-0.9.7-macos-latest-aarch64.zip"
      sha256 "8031561b995ba33cfc14c65ed97b69308dec447365617273f160a85cdaf343a4"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.7/dtlv-0.9.7-macos-latest-amd64.zip"
      sha256 "4b600b17da3aea37fa3a5421226901ec7d23be240770b61a157e7a402db050a5"
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
