class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.4"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.4/dtlv-0.9.4-ubuntu-latest-amd64.zip"
    sha256 "60a5c455c6c95117ea6505a15fa32db8aa88ebe06c891ec4aae7aac746e17e85"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.4/dtlv-0.9.4-macos-latest-aarch64.zip"
      sha256 "a0bfe7ee037e582900ac3dca7ebcb7ab4a076c52c0d6b7b2bf20deeb796ddd61"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.4/dtlv-0.9.4-macos-latest-amd64.zip"
      sha256 "a327215f29c59f3068f76f8b2bda1e5022e88b1c28dfd5b50f36c644efafafab"
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
