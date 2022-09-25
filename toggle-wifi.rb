class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7d4a75064f3e283474c99e3028019bd3154431007ffe9b1091001f317d16b3b7"
  license "MIT"

  depends_on "python@3.10"
  
  def install
    inreplace "com.my.toggle-wifi.plist", "$TOGGLE-WIFI-PATH$", "#{HOMEBREW_PREFIX}/bin/toggle-wifi"
    bin.install "toggle-wifi" 
    prefix.install "toggle-wifi.py"
    prefix.install Dir["notifier"]    
    prefix.install "README.md"
    prefix.install "LICENSE"
    prefix.install "com.my.toggle-wifi.plist"
    prefix.install_symlink "com.my.toggle-wifi.plist" => "#{plist_name}.plist"
  end

  test do
    system "false"
  end
end
