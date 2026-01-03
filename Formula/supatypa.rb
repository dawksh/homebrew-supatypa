class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.1/supatypa"
  sha256 "4846de420f80bd31cb4319c25b02097517aad869f2303510416c85b543297a93"
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

      Supatypa only stores typing COUNTS, never text.
    EOS
  end
end

