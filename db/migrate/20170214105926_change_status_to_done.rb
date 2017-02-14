class ChangeStatusToDone < ActiveRecord::Migration[5.0]
  def change

  rename_column :tasks, :status, :done

  end
end
