# Course: WEBD-3011 Agile Fullstack Dev
# Name: Simon Neufville
# U0 - Challenge Zero (A New Beginning)

# constants
GST_RATE = 5.00
PST_RATE = 7.00


puts "Please type a subtotal: "
user_input = gets.chomp
sub_total = user_input.to_f

pst_amount = sub_total * (PST_RATE / 100)
gst_amount = sub_total * (GST_RATE / 100)

grand_total = sub_total + pst_amount + gst_amount

case grand_total
when grand_total <= 5.00
  output_msg = "Pocket Change"
when (5..20)
  output_msg = "Wallet Time"
else
  output_msg = "Charge It!"
end

puts "Subtotal: $#{sub_total}\nPST: $#{pst_amount} -  #{PST_RATE}%\nGST: $#{gst_amount} - #{GST_RATE}%\nGrand Total: $#{grand_total}"
puts "#{output_msg}"
