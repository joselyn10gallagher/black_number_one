#Black Number One
sleeping = "C:/Users/joselyn_gallagher/Desktop/samples/sleeping_b.wav"
scream1 = "C:/Users/joselyn_gallagher/Desktop/samples/scream1.wav"
scream2 = "C:/Users/joselyn_gallagher/Desktop/samples/scream2.wav"
section1v = "C:/Users/joselyn_gallagher/Desktop/samples/black_vocals.wav"
pan = 1
drum = 1


# Intro
sample sleeping, amp: 7
sleep 19
2.times do
  sample scream1, pan: pan
  sleep 0.5
  pan = pan - 1
end
sample scream2


#Verse 1
use_bpm 90

#First Section
sample section1v, amp: 5
sleep 4.25
live_loop :bass do
  3.times do
    4.times do
      play :e2
      sleep 0.5
    end
    4.times do
      play :g2
      sleep 0.5
    end
    3.times do
      play :b2
      sleep 0.5
    end
    play :a2
    sleep 1
    play :a2
    sleep 0.5
    play :g2
    sleep 0.5
    play :a2
    sleep 0.5
  end
  #end
  4.times do
    play :e2
    sleep 0.5
  end
  4.times do
    play :g2
    sleep 0.5
  end
  play :b2
  sleep 0.5
  play :d3
  sleep 0.5
  2.times do
    play :a2
    sleep 0.5
  end
  sleep 3.5
end

sleep 8
live_loop :drums do
  5.times do
    sleep 1
    sample :drum_snare_soft, amp: drum
    drum = drum + 1
    sleep 2
    sample :drum_snare_soft, amp: drum
    sleep 1
  end
  stop
end

drum = 5

sleep 23.5
live_loop :drums do
  6.times do
    sleep 1
    sample :drum_snare_soft, amp: drum
    sleep 2
    sample :drum_snare_soft, amp: drum
    sleep 1
  end
  stop
end

sleep 2
live_loop :synth do
  use_synth :dtri
  use_bpm 90
  4.times do
    2.times do
      play :b7, amp: 0.25
      play :as7, amp: 0.25
      sleep 0.5
    end
    play :fs7, amp: 0.25
    sleep 0.5
    play :g7, amp: 0.25
    sleep 0.5
    2.times do
      play :b7, amp: 0.25
      play :as7, amp: 0.25
      sleep 0.5
    end
    play :fs7, amp: 0.25
    sleep 0.5
    play :g7, amp: 0.25
    sleep 0.5
    2.times do
      play :b7, amp: 0.25
      play :as7, amp: 0.25
      sleep 0.5
    end
    play :fs7, amp: 0.25
    sleep 0.5
    play :g7, amp: 0.25
    sleep 0.5
    3.times do
      play :b7, amp: 0.25
      play :as7, amp: 0.25
      sleep 0.5
    end
    play :fs7, amp: 0.25
    sleep 0.5
  end
end

#verse 2 coming soon