class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "37310760c03ef40228cbc7135b5f65e0abdb2d74bcfedc976f74049c577e0e96"
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
