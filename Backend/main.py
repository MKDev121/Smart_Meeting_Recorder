from openai import OpenAI
from flask import Flask, request, jsonify

client = OpenAI(
    base_url="https://generativelanguage.googleapis.com/v1beta/openai/",
    api_key="AIzaSyA3p2ARwH7nixzzuO5XdMuMqbYVHhbWk4g"
)




app = Flask(__name__)
@app.route('/')
def index():
    return "<p>Hello, World!</p>"

@app.route('/getMOM',methods=['POST'])
def getMOM():
    data=request.get_json()
    mom=generateMOM(data)
    return jsonify({"mom":mom})

def generateMOM(data):
    date=data['date']
    time=data['time']
    attendees=data['attendees']
    chairperson=data['chairperson']
    text=data['transcription']
    prompt=f""" Generate minutes of meeting based on following details:
    Date: {date}
    Time: {time}
    Attendees: {attendees}
    Chairperson: {chairperson}
    Meeting transcription: {text}
    Also try to infere agenda and main points by looking at the transcription, and remeber this response will be
    sent to an app made in flutter, so the response should be in proper, like it proper whitespaces  and line breaks.
    Just give the MOM no other information, and no other text.
    """

    response = client.chat.completions.create(
    model="gemini-2.5-flash-preview-04-17",
    messages=[{"role": "user", "content":prompt}]
    )
    return response.choices[0].message.content   
    

