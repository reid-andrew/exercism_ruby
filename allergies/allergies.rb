class Allergies
  def initialize(score)
    @score = score
    @allergy_scores ||= find_allergy_scores(score)
    @all_allergeies ||= all_allergies()
  end

  def allergic_to?(allergen)
    @allergy_scores.include?(@all_allergeies[allergen])
  end

  def find_allergy_scores(score)
    scores = []
    max = find_max
    while score > 0
      scores << max if max <= score
      score = score - max if max <= score
      max = max / 2
    end
    scores
  end

  def find_max(max = 1)
    return max if max * 2 > @score

    find_max(max * 2)
  end

  def list
    list = @all_allergeies.select { |key, value| @allergy_scores.include?(value) }
    list.keys
  end

  def all_allergies
    {
      'eggs' => 1,
      'peanuts' => 2,
      'shellfish' => 4,
      'strawberries' => 8,
      'tomatoes' => 16,
      'chocolate' => 32,
      'pollen' => 64,
      'cats' => 128
    }
  end
end
