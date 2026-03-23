from flask import Flask, render_template, request, jsonify

app = Flask(__name__, template_folder='.')

# Calculator functions
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

# Route to serve the HTML file
@app.route('/')
def home():
    return render_template('index.html')

# API route for calculations
@app.route('/calculate', methods=['POST'])
def calculate():
    try:
        data = request.json
        num1 = float(data.get('num1'))
        num2 = float(data.get('num2'))
        operation = data.get('operation')
        
        if operation == 'add':
            result = add(num1, num2)
        elif operation == 'subtract':
            result = subtract(num1, num2)
        elif operation == 'multiply':
            result = multiply(num1, num2)
        else:
            return jsonify({'error': 'Invalid operation'}), 400
        
        return jsonify({'result': result})
    
    except ValueError:
        return jsonify({'error': 'Invalid input. Please enter numbers.'}), 400
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    # Run the server on http://localhost:5000
    app.run(debug=True, port=5000)
