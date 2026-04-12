from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

# In-memory data store
items = []


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Read form values
        title = request.form.get('title', '').strip()
        description = request.form.get('description', '').strip()

        if title:
            items.append({
                'id': len(items) + 1,
                'title': title,
                'description': description,
            })

        return redirect(url_for('index'))

    return render_template('index.html', items=items)


if __name__ == '__main__':
    app.run(debug=True, port=5000)
