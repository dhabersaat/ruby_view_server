require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)
template = ERB.new "

<% pets = ['cats', 'dogs'] %>
<% pets.each_with_index do |pet, index| %>
<p>
<%= pet %> think they are better than <%= pets[index-1] %> %>
</p>
<% end %>
"

puts template.result(binding)

