def get_grade(score_1, score_2, score_3)
  scores_array = []
  scores_array[0] = score_1
  scores_array[1] = score_2
  scores_array[2] = score_3

  avg_score = scores_array.sum / (scores_array.size * 1.0)

  case
  when avg_score >= 90 then 'A'
  when avg_score >= 80 then 'B'
  when avg_score >= 70 then 'C'
  when avg_score >= 60 then 'D'
  else                      'F'
  end

  #return letter grade
end


p get_grade(95, 90, 93)
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
