class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.9.12"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/juji-io/datalevin/releases/download/0.9.12/dtlv-0.9.12-ubuntu-latest-amd64.zip"
    sha256 "572dc6d972228cafaa5094987d9a32b659bd968bc455425b2eb7e66845d777c2"
  else
    if Hardware::CPU.arm?
      url "https://github.com/juji-io/datalevin/releases/download/0.9.12/dtlv-0.9.12-macos-latest-aarch64.zip"
      sha256 "4c3657f593d1c283ee8f2be5fc06176c3e20876a849c4ebf51b3971aa83c19f5"
    else
      url "https://github.com/juji-io/datalevin/releases/download/0.9.12/dtlv-0.9.12-macos-latest-amd64.zip"
      sha256 "ba8e22f2fa2a056cad4a7586a2ba883f83d4c44fc6db3ef89064e94092db06c0"
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
