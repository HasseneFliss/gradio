import random
import gradio as gr

def alternatingly_agree(message, history):
    if len(history) % 2 == 0:
        return f"Yes, I do think that '{message}'"
    else:
        return "I don't think so"

if __name__ == "__main__":
    gr.ChatInterface(alternatingly_agree).launch(server_name="0.0.0.0", server_port=5000)