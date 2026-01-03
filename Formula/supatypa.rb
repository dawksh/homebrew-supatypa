class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.5/supatypa"
  sha256 "753b1267010652cc25640e2be813a67f0ac171bc8c6c8e492a9205e7785e0ae6"
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

