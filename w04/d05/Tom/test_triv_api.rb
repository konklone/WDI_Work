require 'Unirest'

questions = []

res = Unirest::get("https://privnio-trivia.p.mashape.com/exec?category=entertainment&v=1&method=getQuestions",
  {
    "X-Mashape-Authorization" => "FeTqQsQyAbHRNm6oTxLjAkw9yLn5RQHT"
  }
)

single_answer_ques = (res.body["result"].map do |q|
  q["answer"] = q["answer"].to_s
  q
end.select do |q|
  !q["answer"].match /a\./
end)

