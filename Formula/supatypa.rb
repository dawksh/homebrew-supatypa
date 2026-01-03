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

