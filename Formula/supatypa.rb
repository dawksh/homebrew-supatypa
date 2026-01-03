class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.4/supatypa"
  sha256 "e1721aba811449d6e100d144b4e4dedf31fd0f2230f0aca134f742c1ef3727a0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "supatypa"
    system "codesign", "--force", "--sign", "-", bin/"supatypa"
  end

  def caveats
    <<~EOS
      Supatypa runs as a background menu bar app.

      Accessibility permission is REQUIRED:
        System Settings → Privacy & Security → Accessibility
        Enable "supatypa"

      If macOS blocks the app on first launch:
        System Settings → Privacy & Security → Allow Anyway

      supatypa only stores typing COUNTS, never text.
    EOS
  end
end

