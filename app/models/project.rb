class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :tasks, -> { order 'project_order ASC' }

  def self.velocity_length_in_days
    21
  end

  def user_count
    4
  end

  def incomplete_tasks
    tasks.reject(&:complete?)
  end

  def done?
    incomplete_tasks.empty?
  end

  def total_size
    tasks.to_a.sum(&:size)
  end

  def remaining_size
    incomplete_tasks.sum(&:size)
  end

  def completed_velocity
    tasks.to_a.sum(&:points_toward_velocity)
  end

  def current_rate
    completed_velocity * 1.0 / Project.velocity_length_in_days
  end

  def projected_days_remaining
    remaining_size / current_rate
  end

  def undefined_rate?
    current_rate == 0
  end

  def on_schedule?
    return false if undefined_rate?
    (Date.today + projected_days_remaining) <= due_date
  end
end
