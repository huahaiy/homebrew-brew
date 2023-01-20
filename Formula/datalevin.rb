class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.8.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.8.4/dtlv-0.8.4-ubuntu-latest-amd64.zip"
    sha256 "470489e39c1be6865463c867d4fa5daeb4e6c75e907850a54feb35d4fc3b5d49"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.8.4/dtlv-0.8.4-macos-latest-aarch64.zip"
      sha256 "7783ec04581e2d244e926af2b2f6c2f10c1c5452b38ea7f9fc4b7bf90938d205"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.8.4/dtlv-0.8.4-macos-latest-amd64.zip"
      sha256 "bad69a76769af31167324c3cfef427efe99db60c4a3494bd7dce38ec9cf2d212"
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
