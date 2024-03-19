from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/hello', methods=['POST'])
def hello_world():
  txt = request.json.get('txt', '')
  return jsonify(message=f"Hello World {txt}")

@app.route('/health', methods=['GET'])
def health_check():
  return "OK"

if __name__ == '__main__':
  app.run(host='0.0.0.0', port=8080)