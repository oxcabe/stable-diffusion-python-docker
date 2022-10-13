# stable-diffusion-pytorch (Docker build)
Develop software with Python 3 and Stable Diffusion containerized in a Docker image.

This container includes a development environment for image generation through the Stable Diffusion implementation that uses _HuggingFace_ [diffusers](https://huggingface.co/blog/stable_diffusion).

## Example program

The following code is ready to run on a container based on this image.
It generates images based on a text prompt:

```
import torch
from diffusers import StableDiffusionPipeline

# get your token at https://huggingface.co/settings/tokens
pipe = StableDiffusionPipeline.from_pretrained("CompVis/stable-diffusion-v1-4",
    revision="fp16", torch_dtype=torch.float16, use_auth_token=YOUR_TOKEN)
 
prompt = "a photograph of an astronaut riding a horse"

with torch.autocast("cuda"):
    image = pipe(prompt)["sample"][0]

# you can save the image with
# image.save(f"astronaut_rides_horse.png")
```

### This image is still a work-in-progress. There are still things to improve in order to make it usable.
