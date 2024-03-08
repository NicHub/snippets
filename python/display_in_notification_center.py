import subprocess


def display_in_notification_center(title="", subtitle=__file__, notification="", sound="Frog"):
    """___"""
    applescript = f'display notification "{notification}" with title "{title}" subtitle "{subtitle}" sound name "{sound}"'
    subprocess.run(["osascript", "-e", applescript], check=True)


if __name__ == "__main__":

    display_in_notification_center(title="Coucou", notification="C’est moi")
