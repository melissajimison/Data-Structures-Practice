class BaggageConcierge
  attr_accessor :bins
  def initialize
      @bins = create_bins()
  end

  def create_bins
    bins = {}
    100.times do |bin_id|
        bins["#{bin_id}"] = {'capacity': 2}
    end
    bins
  end

  def store(bag)
    bin_id = nil
    @bins.each do |key, value|
      if @bins[key][:capacity] >= bag.bag_size
          @bins[key]["#{bag.id}"] = bag
          @bins[key][:capacity] = @bins[key][:capacity] - bag.bag_size
          bin_id = key
          break
      end
    end
    Ticket.new(bin_id, bag.id)
  end

  def retrieve(ticket)
    bin = @bins[ticket.bin_id ]
    bin[:capacity] = bin[:capacity] + bin[ticket.bag_id.to_s].bag_size
    bin[ticket.bag_id.to_s]
  end

  class Bag
    attr_accessor :bag_type, :bag_size, :id

    @@count_id = 0

    def initialize(bag_type)
        @@count_id = @@count_id +1
        @id = @@count_id
        @bag_type = bag_type
        @bag_size = get_size(bag_type)
    end

    def get_size(bag_type)
      sizes = {
          'carry_on' => 1,
          'checked_bag' => 2
        }
        sizes["#{bag_type}"]
    end

  end

  class Ticket
    attr_accessor :bin_id, :bag_id, :id

    @@count_id = 0

    def initialize(bin_id, bag_id)
      @@count_id = @@count_id +1
      @id = @@count_id
      @bin_id = bin_id
      @bag_id = bag_id
    end

	end
end

concierge = BaggageConcierge.new()
bag = BaggageConcierge::Bag.new('carry_on')
bag2 = BaggageConcierge::Bag.new('checked_bag')

t = concierge.store(bag)
t2 = concierge.store(bag2)
puts concierge.bins
puts "++++++++++++++++"
B = concierge.retrieve(t)
puts "++++++++++++++++"

puts B
bag3 = BaggageConcierge::Bag.new('carry_on')
