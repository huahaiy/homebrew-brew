class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.26"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.26/dtlv-0.8.26-ubuntu-latest-amd64.zip"
    sha256 "5fe6e9348d0a62b44e8f534a50a0a64ab7a0199b369e861b1ebc2395125cd666"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.26/dtlv-0.8.26-macos-latest-aarch64.zip"
      sha256 "3e6769bda19aa856f806efddd222feea1c73fd305529a7a7761c37e77675ec9e"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.26/dtlv-0.8.26-macos-latest-amd64.zip"
      sha256 "2be10b56ef2d58a6c4f7d181d26eb3cde55b03fee18ef310cbee460df1e1b5d2"
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
