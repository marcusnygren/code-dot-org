class ChangeGradesToNullInSchoolStatsByYears < ActiveRecord::Migration[5.0]
  def up
    change_column :school_stats_by_years, :grades_offered_lo, :string, limit: 2, null: true, comment: 'Grades Offered - Lowest'
    change_column :school_stats_by_years, :grades_offered_hi, :string, limit: 2, null: true, comment: 'Grades Offered - Highest'
    change_column :school_stats_by_years, :grade_pk_offered, :boolean, null: true, comment: 'PK Grade Offered'
    change_column :school_stats_by_years, :grade_kg_offered, :boolean, null: true, comment: 'KG Grade Offered'
    change_column :school_stats_by_years, :grade_01_offered, :boolean, null: true, comment: 'Grade 01 Offered'
    change_column :school_stats_by_years, :grade_02_offered, :boolean, null: true, comment: 'Grade 02 Offered'
    change_column :school_stats_by_years, :grade_03_offered, :boolean, null: true, comment: 'Grade 03 Offered'
    change_column :school_stats_by_years, :grade_04_offered, :boolean, null: true, comment: 'Grade 04 Offered'
    change_column :school_stats_by_years, :grade_05_offered, :boolean, null: true, comment: 'Grade 05 Offered'
    change_column :school_stats_by_years, :grade_06_offered, :boolean, null: true, comment: 'Grade 06 Offered'
    change_column :school_stats_by_years, :grade_07_offered, :boolean, null: true, comment: 'Grade 07 Offered'
    change_column :school_stats_by_years, :grade_08_offered, :boolean, null: true, comment: 'Grade 08 Offered'
    change_column :school_stats_by_years, :grade_09_offered, :boolean, null: true, comment: 'Grade 09 Offered'
    change_column :school_stats_by_years, :grade_10_offered, :boolean, null: true, comment: 'Grade 10 Offered'
    change_column :school_stats_by_years, :grade_11_offered, :boolean, null: true, comment: 'Grade 11 Offered'
    change_column :school_stats_by_years, :grade_12_offered, :boolean, null: true, comment: 'Grade 12 Offered'
    change_column :school_stats_by_years, :grade_13_offered, :boolean, null: true, comment: 'Grade 13 Offered'
    change_column :school_stats_by_years, :virtual_status, :string, limit: 14, null: true, comment: 'Virtual School Status'
  end

  def down
    change_column :school_stats_by_years, :grades_offered_lo, :string, limit: 2, null: false, comment: 'Grades Offered - Lowest'
    change_column :school_stats_by_years, :grades_offered_hi, :string, limit: 2, null: false, comment: 'Grades Offered - Highest'
    change_column :school_stats_by_years, :grade_pk_offered, :boolean, null: false, comment: 'PK Grade Offered'
    change_column :school_stats_by_years, :grade_kg_offered, :boolean, null: false, comment: 'KG Grade Offered'
    change_column :school_stats_by_years, :grade_01_offered, :boolean, null: false, comment: 'Grade 01 Offered'
    change_column :school_stats_by_years, :grade_02_offered, :boolean, null: false, comment: 'Grade 02 Offered'
    change_column :school_stats_by_years, :grade_03_offered, :boolean, null: false, comment: 'Grade 03 Offered'
    change_column :school_stats_by_years, :grade_04_offered, :boolean, null: false, comment: 'Grade 04 Offered'
    change_column :school_stats_by_years, :grade_05_offered, :boolean, null: false, comment: 'Grade 05 Offered'
    change_column :school_stats_by_years, :grade_06_offered, :boolean, null: false, comment: 'Grade 06 Offered'
    change_column :school_stats_by_years, :grade_07_offered, :boolean, null: false, comment: 'Grade 07 Offered'
    change_column :school_stats_by_years, :grade_08_offered, :boolean, null: false, comment: 'Grade 08 Offered'
    change_column :school_stats_by_years, :grade_09_offered, :boolean, null: false, comment: 'Grade 09 Offered'
    change_column :school_stats_by_years, :grade_10_offered, :boolean, null: false, comment: 'Grade 10 Offered'
    change_column :school_stats_by_years, :grade_11_offered, :boolean, null: false, comment: 'Grade 11 Offered'
    change_column :school_stats_by_years, :grade_12_offered, :boolean, null: false, comment: 'Grade 12 Offered'
    change_column :school_stats_by_years, :grade_13_offered, :boolean, null: false, comment: 'Grade 13 Offered'
    change_column :school_stats_by_years, :virtual_status, :string, limit: 14, null: false, comment: 'Virtual School Status'
  end
end
