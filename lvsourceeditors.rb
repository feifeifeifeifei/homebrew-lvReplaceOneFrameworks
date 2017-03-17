# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Lvsourceeditors < Formula
  desc "replace #import to @import quote"
  homepage "http://lvioscode.com/ios_support_tools/LvmmSourceEditor.git"
  url "http://lvioscode.com/ios_support_tools/LvmmSourceEditor/repository/archive.tar.gz?ref=1.0.0"
  version "1.0.0"
  sha256 "8dd5d1b65434c75956d9ed604a75246d95dfdc7026ab27c835ec7533ffad1b00"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    bin.install "lvReplaceOneFrameworks"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test LVSourceEditors`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end