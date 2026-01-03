class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.1/supatypa"
  sha256 "8b1258a3e0fbeeda89637558c4f7a403faa4e993d8bb147cb3f15b98fbbf1dc6"
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

