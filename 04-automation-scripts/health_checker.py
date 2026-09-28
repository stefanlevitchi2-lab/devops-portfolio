import shutil
import urllib.request
import sys
import platform

def check_disk():
    total, used, free = shutil.disk_usage("/")
    used_pct = (used / total) * 100
    status = "OK" if used_pct < 90 else "WARNING"
    print(f"[{status}] Disk Usage: {used_pct:.1f}% (Threshold: < 90%)")
    return used_pct < 90

def check_service(url="https://httpbin.org/status/200"):
    try:
        req = urllib.request.urlopen(url, timeout=5)
        print(f"[OK] Health Endpoint ({url}): Status {req.status}")
        return req.status == 200
    except Exception as e:
        print(f"[FAIL] Health Endpoint ({url}): Failed ({e})")
        return False

if __name__ == "__main__":
    print(f"--- Running System Health Check ({platform.system()} {platform.release()}) ---")
    disk_ok = check_disk()
    service_ok = check_service()
    
    if disk_ok and service_ok:
        print("\n[SUCCESS] System checks passed successfully.")
        sys.exit(0)
    else:
        print("\n[FAILURE] One or more health thresholds breached.")
        sys.exit(1)