class ToggleWifi < Formula

  desc "Toggle Wifi On/Off if ethernet is dis-/connected."
  homepage ""
  url "https://github.com/mietzen/toggle-wifi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8afa8b690eaff27e624d74a16dad6026783d97de85fde8f46236842ac199f702"
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
