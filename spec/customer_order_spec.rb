describe CustomerOrder do
    before(:each) do
        @customer = CustomerOrder.new("Bob")
    end
    it "instance have a readable name" do
        expect(@customer.name).to eq("Bob")
    end
    it "display's welcome message" do
        msg = "Welcome to Da Cafe, please xhoose and item from the menu or enter exit to quit."
        expect(@customer.welcome_msg).to eq(msg)
    end
    it "display the menu" do
        menu = {"1.Nachos" => 10, "2.Pizza" => 15, "3.fries" => 8}
        expect(@customer.menu).to eq(menu)
    end
    it "get item price based on user choice" do
        user_choice = 1
        expect(@customer.get_item_price(user_choice)).to eq(10)
    end
    it "get quanitity" do
        expect(@cutomer.get_quantity).to be > 0
    end
    it "should calculate the final bill" do
        user_choice = 1
        final_bill = @customer.get_item_price(user_choice) * @Customer.get_quantity
        expect(@customer.bill).to eq()
    end
end