use_osc "localhost", 57200
beats = (range 1, 8)

live_loop :osc_test do
  beats.each do |beat|
    play (scale :e3, :minor).choose
    osc "/KodeLife/control_change", 1, 0, beat.to_i
    sleep 0.25
  end
  
  sleep 1.0
end