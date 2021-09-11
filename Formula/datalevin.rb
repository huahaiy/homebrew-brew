class Datalevin < Formula
  desc "Simple, fast and versatile Datalog database"
  homepage "https://github.com/juji-io/datalevin"
  version "0.5.8"
  license "EPL-1.0"

  bottle :unneeded

  on_linux do
    url "https://github.com/juji-io/datalevin/releases/download/0.5.8/dtlv-0.5.8-ubuntu-latest-amd64.zip"
    sha256 "aa966a9906acdc0e80768b5744f093978f44176fb3c4d55ff9e0b9cea58ef638"
  end

  on_linux do
    url "https://github.com/juji-io/datalevin/releases/download/0.5.8/dtlv-0.5.8-macos-latest-amd64.zip"
    sha256 "d051099a857083ec7a3fbfa11bf8262c0537d6d96acd12bcdadfecc21ef9b369"
  end

  def install
    bin.install "dtlv"
  end
end
