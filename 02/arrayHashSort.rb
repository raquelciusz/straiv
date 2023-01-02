# tally, each key is an element of self
# tally, each value is the number elements equal to that key
# sort_by sort by hash values instead of key
# -v to have descending order
# to_h to display data as hash

items = ['bed', 'pillow', 'bed', 'pillow', 'table', 'bed', 'pillow', 'door', 'light', 'minibar', 'light', 'chair', 'chair', 'light', 'light', 'hairdryer', 'soap']

counts = items.tally.sort_by { |k, v| -v }.to_h
puts counts
