onmessage = function (event) {
    console.log("received " + event.data)
    var num = parseInt(event.data);
    var results = [];

    function factorial(n) {
        return n === 0 ? 1 : n * factorial(n - 1);
    }

    for (var i = 1; i <= num; i++) {
        results.push([i, factorial(i)]);
    }

    postMessage(results);
};
