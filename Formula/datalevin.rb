class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.5"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.5/dtlv-0.9.5-ubuntu-latest-amd64.zip"
    sha256 "86f37cb265e98422db68965ac46bcc98cc9d09cd8895db1fecd65a4b320e760b"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.5/dtlv-0.9.5-macos-latest-aarch64.zip"
      sha256 "4e5f8567b7c378796e29858316ce206e641bf8b0375c7136c9cb9d8c1f928239"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.5/dtlv-0.9.5-macos-latest-amd64.zip"
      sha256 "81f4f40f12818347989f99b3c50a5fb19b46aacd2e08d0ccd7c7ca099d904e8e"
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
