class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.0/supatypa"
  sha256 "dd6f1d70dfc0d2c26eeb0837ecfebbc8e2afa8b4e9693fca6772081a872a0367"
  license "MIT"

  depends_on :macos

  def install
    bin.install "supatypa"
  end

  def caveats
    <<~EOS
      Supatypa runs as a background menu bar app.

      Accessibility permission is REQUIRED:
        System Settings → Privacy & Security → Accessibility
        Enable "supatypa"

      If macOS blocks the app on first launch:
        System Settings → Privacy & Security → Allow Anyway

      Supatypa only stores typing COUNTS, never text.
    EOS
  end
end

