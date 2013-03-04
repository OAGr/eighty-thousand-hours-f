class ChangeEtkhProfiles < ActiveRecord::Migration
  def change
  	add_column :etkh_profiles, :career_sector, :string

  	create_table :positions do |t|
      t.integer :etkh_profile_id 
      t.string :position
      t.string :organisation
      t.string :start_date_month
      t.integer :start_date_year
      t.string :end_date_month
      t.integer :end_date_year
      t.boolean :current_position
  	end

    create_table :educations do |t|
      t.integer :etkh_profile_id
      t.string :university
      t.string :course
      t.string :qualification
      t.string :start_date_month
      t.integer :start_date_year
      t.string :end_date_month
      t.integer :end_date_year
      t.boolean :current_education
    end
  end
end