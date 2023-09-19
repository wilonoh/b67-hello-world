<!DOCTYPE html>
<html>
<head>
  <title>Calculator</title>
  <style>
    body {
      font-family: sans-serif;
    }

    .calculator {
      width: 300px;
      margin: 0 auto;
    }

    .display {
      width: 100%;
      height: 50px;
      border: 1px solid black;
      text-align: right;
    }

    .buttons {
      width: 100%;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .button {
      width: 25%;
      height: 50px;
      border: 1px solid black;
      text-align: center;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="calculator">
    <input type="text" class="display" id="display">
    <div class="buttons">
      <button class="button" onclick="add(1)">1</button>
      <button class="button" onclick="add(2)">2</button>
      <button class="button" onclick="add(3)">3</button>
      <button class="button" onclick="add('+')">+</button>
      <button class="button" onclick="add(4)">4</button>
      <button class="button" onclick="add(5)">5</button>
      <button class="button" onclick="add(6)">6</button>
      <button class="button" onclick="add('-')">-</button>
      <button class="button" onclick="add(7)">7</button>
      <button class="button" onclick="add(8)">8</button>
      <button class="button" onclick="add(9)">9</button>
      <button class="button" onclick="add('*')">*</button>
      <button class="button" onclick="add('.')">.</button>
      <button class="button" onclick="add(0)">0</button>
      <button class="button" onclick="equal()">=</button>
      <button class="button" onclick="clear()">C</button>
    </div>
  </div>

  <script>
    function add(value) {
      document.getElementById('display').value += value;
    }

    function equal() {
      var expression = document.getElementById('display').value;
      var result = eval(expression);
      document.getElementById('display').value = result;
    }

    function clear() {
      document.getElementById('display').value = '';
    }
  </script>
</body>
</html>
