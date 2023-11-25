import sys

def compare_strings(string1, string2):
    if string1 == string2:
        return True
    else:
        return False

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(1)

    string1 = sys.argv[1]
    string2 = sys.argv[2]

    result = compare_strings(string1, string2)

    if result:
        sys.exit(0)
    else:
        sys.exit(1)