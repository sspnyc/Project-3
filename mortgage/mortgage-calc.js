//The code

// 1 + 3 * 7 / 21 + 4

// The formula: c = (r * p) / (1 - (Math.pow(1 + r), (-n))))
// @param p float Amount borrowed
// @param r interest as a percentage
// @param n term in years
function calculateMortgage(p, r, n) {
  // convert this percentage to a decimal
  r = percentToDecimal(r);

  // convert yearsToMonths
  n = yearsToMonths(n);

  // return monthlyPayments;
  var pmt = (r * p) / (1 - (Math.pow(1 + r), (-n)));
  
  return parseFloat(pmt.toFixed(2));
}

function percentToDecimal(percent) {
  return (percent/12)/100;
}

function yearsToMonths(year) {
  return year * 12;
}

function postPayments(payment) {
  var htmlE1 = document.getElementById("outMonthly");

  htmlE1.innerText = "$" + payment;

}

var btn = document.getElementById("btnCalculate");
btn.onclick = function() {
    var cost = document.getElementById("inCost").value;
    if (cost === "") {
      alert ("Please end a cost amount");
      return false;
    }

    if (cost < 0) {
      alert ("Invalid cost");
      return false;
    }

    var downPayment = document.getElementById("inDown").value;
    var interest = document.getElementById("inAPR").value;
    // Regular expression?
    // checks patterns against a string
    var term = document.getElementById("inPeriod").value;

    var amountBorrowed = cost - downPayment;
   

    var pmt = calculateMortgage(amountBorrowed, interest, term);

    postPayments(pmt);
};