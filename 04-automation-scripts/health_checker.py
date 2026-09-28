import shutil
import sys

def check_disk_usage(disk="/", threshold=80):
    total, used, free = shutil.disk_usage(disk)
    percent_used = (used / total) * 100
    print(f"[DISK] Used: {percent_used:.2f}% | Free: {free // (2**30)} GB")
    return percent_used < threshold

def run_health_check():
    print("--- Starting System Health Check ---")
    disk_ok = check_disk_usage()
    
    if disk_ok:
        print("[STATUS] SYSTEM HEALTHY - All checks passed.")
        sys.exit(0)
    else:
        print("[WARNING] SYSTEM ALERT - Disk usage exceeded threshold!")
        sys.exit(1)

if __name__ == "__main__":
    run_health_check()