
// Use Parse.Cloud.define to define as many cloud functions as you want.
// For example:
Parse.Cloud.define("hello", function(request, response) {
    console.log('Ran cloud function.');
    response.success("Hello world!");
});

// sum up all transactions for each user, to get account balance
Parse.Cloud.define("addTransactions", function(request, response) {

    var queryTrans = new Parse.Query("Transactions");
    var queryUser = new Parse.Query("User");

    queryUser.equalTo("username", request.params.username);

    queryTrans.equalTo("username", request.params.username);

    queryTrans.find({
    success: function(results) {
      var sum = 0;
      for (var i = 0; i < results.length; ++i) {
        sum += results[i].get("amount_sent");
          //how to get user $15000 then subtract sum?
      }
      response.success(sum);
    },
    error: function() {
      response.error("user transaction lookup failed");
    }
  });
});