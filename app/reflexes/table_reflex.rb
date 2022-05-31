class TableReflex < ApplicationReflex
  def sort
    words = Word.order("#{element.dataset.column} #{element.dataset.direction}")
    morph '#words', render(partial: 'words', locals: { words: words })
    set_sort_direction if next_direction(element.dataset.direction) == 'DESC'
    insert_indicator
  end

  private

  def next_direction(direction)
    direction == 'ASC' ? 'DESC' : 'ASC'
  end

  def set_sort_direction
    cable_ready
      .set_dataset_property(
        selector: "##{element.id}",
        name: 'direction',
        value: next_direction(element.dataset.direction)
      )
  end

  def insert_indicator
    cable_ready
      .prepend(
        selector: "##{element.id}",
        html: render(
          partial: 'words/sort_indicator',
          locals: { direction: element.dataset.direction }
        )
      )
  end
end
