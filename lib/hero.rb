# 勇者 (Hero) のふるまいを表すクラス
class Hero
  attr_reader :name, :hp

  def initialize(name, hp)
    @name = name
    @hp = hp
  end

  def test_dead
    hero_hp1 = Hero.new('ああああ', 1)
    hero_hp0 = Hero.new('ああああ', 0)
    hero_hpminus = Hero.new('ああああ', -1)

    assert_equal(hero_hp1.dead?, false)
    assert_equal(hero_hp0.dead?, true)
    assert_equal(hero_hpminus.dead?, true)
  end

  def dead?
    @hp <= 0
  end
end