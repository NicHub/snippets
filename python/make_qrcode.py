"""
QRCODE INSTALLATION
sudo pip install qrcode pillow
https://pypi.org/project/qrcode/
"""

import qrcode


def make_qrcode(data, fpath):
    """ ___ """
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=20,
        border=4,
    )
    qr.add_data(data)
    qr.make(fit=True)
    img = qr.make_image(fill_color="black", back_color="white")
    img.save(fpath)


if __name__ == "__main__":
    data = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisi etiam dignissim diam quis enim lobortis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend. Arcu non odio euismod lacinia at quis. Gravida arcu ac tortor dignissim convallis aenean et tortor at. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Arcu vitae elementum curabitur vitae nunc sed velit. Condimentum lacinia quis vel eros donec ac. Cras fermentum odio eu feugiat pretium nibh. Lectus vestibulum mattis ullamcorper velit sed ullamcorper. Nulla at volutpat diam ut venenatis. Ornare lectus sit amet est. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Consectetur purus ut faucibus pulvinar elementum integer enim neque. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Rutrum tellus pellentesque eu tincidunt tortor. Egestas congue quisque egestas diam in arcu cursus."
    fpath = "./qrcode_nogit.png"
    make_qrcode(data, fpath)
