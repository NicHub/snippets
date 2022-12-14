"""

"""
import subprocess


def main():
    """___"""
    print("\n# 1")
    cmd = ["echo", "Sésame, ouvre-toi !"]
    subprocess.run(cmd)

    print("\n# 2")
    cmd = ["echo", "Sésame, ouvre-toi !"]
    ans = subprocess.run(cmd, check=True)
    print(f"ans = {ans}")

    print("\n# 3")
    cmd = 'echo "Sésame, ouvre-toi !"'
    ans = subprocess.run(cmd, shell=True, capture_output=True)
    print(f"ans = {ans}")
    print(f"ans.stdout = {ans.stdout}")
    print(f"ans.stderr = {ans.stderr}")


if __name__ == "__main__":
    main()
