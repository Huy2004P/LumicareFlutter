import subprocess
import re
import sys

def run(cmd):
    return subprocess.check_output(cmd, shell=True, text=True, stderr=subprocess.STDOUT)

def scan():
    try:
        out = run("adb mdns services")
    except Exception as e:
        print("Không chạy được adb:", e)
        return []

    devices = []
    for line in out.splitlines():
        m = re.search(r"(\d+\.\d+\.\d+\.\d+):(\d+)", line)
        if m:
            devices.append(m.groups())

    return devices

def choose(devices):
    print("\n📡 Devices:")
    for i, (ip, port) in enumerate(devices):
        print(f"[{i}] {ip}:{port}")

    idx = int(input("Chọn device: "))
    return devices[idx]

def connect(ip, port):
    addr = f"{ip}:{port}"
    print(f"🔌 Connecting {addr}")
    print(run(f"adb connect {addr}"))

def main():
    devices = scan()

    if not devices:
        print("❌ Không tìm thấy device")
        sys.exit(1)

    ip, port = choose(devices)
    connect(ip, port)

    print("\n✅ ADB ready!")

if __name__ == "__main__":
    main()