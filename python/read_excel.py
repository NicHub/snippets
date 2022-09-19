"""

"""

import pandas as pd


def read_excel(fpath, sheet_name):
    """ ___ """
    df = pd.read_excel(fpath, sheet_name=sheet_name)
    df["NAME"] = df["NAME"].astype("string")
    df["AMOUNT"] = df["AMOUNT"].astype("float16")
    return df


if __name__ == "__main__":
    fpath = "read_excel.xlsx"
    sheet_name = "Sheet1"
    df = read_excel(fpath, sheet_name)
    print(df)
    print(df.dtypes)
    dt = df["DATE"][1] - df["DATE"][0]
    print(f"dt = {dt}")
