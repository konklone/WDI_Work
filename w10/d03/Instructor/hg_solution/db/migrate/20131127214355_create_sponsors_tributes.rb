class CreateSponsorsTributes < ActiveRecord::Migration
  def change
    create_table :sponsors_tributes do |t|
      t.references :sponsor
      t.references :tribute
    end
  end
end
