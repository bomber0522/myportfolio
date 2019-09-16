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
