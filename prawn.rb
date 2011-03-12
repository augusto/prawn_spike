require 'prawn'

def lorem 
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Utenim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, suntin culpa qui officia deserunt mollit anim id est laborum."
end

pdf_format = {
  :page_size => 'A4',
  :top_margin => 132,
  :right_margin => 100,
  :background => 'page_template.png',
  :background_scale => 0.36
}

pdf = Prawn::Document.new( pdf_format )

20.times {
  pdf.text lorem
}

pdf.render_file('prawn.pdf')
