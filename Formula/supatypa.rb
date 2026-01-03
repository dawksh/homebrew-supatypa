class Supatypa < Formula
  desc "macOS menu bar app that tracks daily typing statistics"
  homepage "https://github.com/dawksh/supatypa"
  url "https://github.com/dawksh/supatypa/releases/download/v0.1.6/supatypa"
  sha256 "e5c39e1d7b0e956f12ba584c552744f546baa3e4f5e019422cf2df6426de72d4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "supatypa"
    
    binary_path = "#{bin}/supatypa"
    
    system "open", "x-apple.systempreferences:com.apple.preference.security?Privacy_Accessibility"
    
    sleep 2
    
    system "osascript", "-e", <<~EOS
      display dialog "Add supatypa to Accessibility:" & return & return & "1. Click the lock icon (if needed) and authenticate" & return & "2. Click the + button" & return & "3. Press Cmd+Shift+G and navigate to: #{binary_path}" & return & "4. Select supatypa and click Open" & return & "5. Enable the toggle next to supatypa" buttons {"OK"} default button 1 with title "Accessibility Permission Required" with icon note
    EOS
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

