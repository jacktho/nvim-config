require('lualine').setup { 
  options = { 
    icons_enabled = true,
    theme = 'codedark'
  },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1
      }
    }
  }
}
