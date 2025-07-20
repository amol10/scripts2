import sys
import requests

def download_image(url, filename):
    """
    Downloads an image from the given URL and saves it to the specified filename.

    Parameters:
        url (str): The URL of the image to download.
        filename (str): The local file path where the image will be saved.
    """
    try:
        response = requests.get(url, stream=True)
        response.raise_for_status()
        with open(filename, 'wb') as f:
            for chunk in response.iter_content(1024):
                f.write(chunk)
        print(f"Image downloaded and saved as {filename}")
    except Exception as e:
        print(f"Error downloading image: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python download_image_cli.py <image_url> <output_filename>")
        sys.exit(1)
    image_url = sys.argv[1]
    output_filename = sys.argv[2]
    download_image(image_url, output_filename)