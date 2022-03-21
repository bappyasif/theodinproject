class LessonDecorator < ApplicationDecorator

  def next_lesson
    FindLesson.new(lesson, course).next_lesson
  end

  def course
    CourseDecorator.new(lesson.course)
  end

  private

  def lesson
    __getobj__
  end
end
