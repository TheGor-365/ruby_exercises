class ShowName
  def self.show_attrs **attributes
    pp attributes
  end
end

params = {
  mark: 'mark',
  eric: 'eric'
}

ShowName.show_attrs mark: 'mark'
ShowName.show_attrs eric: 'eric'
ShowName.show_attrs mark: 'mark', eric: 'eric'
