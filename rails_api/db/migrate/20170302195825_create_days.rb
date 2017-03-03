class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days, id: false do |t|
      t.date :date, null: false, unique: true, index: true
      t.boolean :weekend
      t.boolean :holiday
    end


    (Date.new(2017,1,1)..Date.new(2020,12,31)).each do |date|
      Day.create(
        date: date,
        weekend: date.saturday? || date.sunday?
      )
    end

  end
end
