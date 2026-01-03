class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.1/supatypa"
  sha256 "b37b310ed04f37b2ebc4442edd0add21769358ecfc992683ba1e8faffe4f1b12"
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

