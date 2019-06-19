names = %w(Takaki Naomi)
fnames = ["中村", "悦居"]
gnames = ["孝樹", "直美"]
0.upto(1) do |idx|
  Member.create(
    name: names[idx],
    full_name: "#{fnames[idx % 2]} #{gnames[idx % 2]}",
    email: "#{names[idx]}@example.com",
    birthday: "1969-03-17",
    administrator: (idx == 0),
    password: "5t5a7k3a",
    password_confirmation: "5t5a7k3a"
  )
end

body =
  "今晩は久しぶりに神宮で野球観戦。内野B席の上段に着席。\n\n" +
  "先発はヤクルトがブキャナン、広島はジョンソン。" +
  "2回裏に中村選手のセーフティスクイズなどでヤクルトが3点を先取。" +
  "そして、8回裏には代打・荒木選手がレフトスタンドへ2号満塁ホームラン。\n\n" +
  "ブキャナン投手の今季初完封を見届けて、気分良く家路に着きました。"

%w(Takaki Naomi).each do |name|
  member = Member.find_by(name: name)
  0.upto(1) do |idx|
    Entry.create(
      author: member,
      title: "野球観戦#{idx}",
      body: body,
      posted_at: 10.days.ago.advance(days: idx),
      status: %w(draft member_only public)[idx % 3]
    )
  end
end
