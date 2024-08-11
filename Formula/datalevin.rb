class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.10"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.10/dtlv-0.9.10-ubuntu-latest-amd64.zip"
    sha256 "ba3c69fa283632314b393b5ffcf7b39bead6aa2d903f7147b8a597c04ff30257"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.10/dtlv-0.9.10-macos-latest-aarch64.zip"
      sha256 "920d813467dd9fdcd4f5803eeda9e996e1e24493f354f4f21124e1c71408ac90"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.10/dtlv-0.9.10-macos-latest-amd64.zip"
      sha256 "191f442cc9a5bdb7fa9da69510e00a7629a6222213a1a588c0d8fcda7cf58c4e"
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
