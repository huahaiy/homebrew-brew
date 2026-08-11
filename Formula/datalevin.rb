class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/datalevin/datalevin"
  version "1.0.2"
  license "EPL-1.0"

  if OS.linux?
    url "https://github.com/datalevin/datalevin/releases/download/1.0.2/dtlv-1.0.2-ubuntu-22.04-amd64.zip"
    sha256 "5336f49ca6c29348c9792cf53fa491867fae14483ace452d1b2b07bb8d1596d0"
  else
    url "https://github.com/datalevin/datalevin/releases/download/1.0.2/dtlv-1.0.2-macos-14-aarch64.zip"
    sha256 "9f7df87bba736d7549eafe46fc380b92c30e0f20dede09ebe3e49990c687cdc7"
  end

  def install
    bin.install "dtlv"
  end

  test do
    assert_equal "10\n",
      pipe_output("#{bin}/dtlv exec '(+ 1 2 3 4)'")
  end
end
