CKEDITOR.editorConfig = function(config) {
  config.language = 'en';
  //config.width = '725';
  //config.height = '600';
  config.width = "auto";
  config.height = "auto";
  config.toolbar_Pure = [
    {
      name: 'document',
      items: ['Source']
    }, {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'Underline', 'Strike']
    }, {
      name: 'clipboard',
      items: ['Cut', 'Copy', 'Paste', '-', 'Undo', 'Redo']
    }, {
      name: 'editing',
      items: ['Find', 'Replace', '-', 'SelectAll', '-', 'SpellChecker', 'Scayt']
    }, {
      name: 'tools',
      items: ['Maximize', 'ShowBlocks']
    }, {
      name: 'paragraph',
      items: ['NumberedList', 'BulletedList']
    }, {
      name: 'links',
      items: ['Link', 'Unlink', 'Anchor']
    }, '/', {
      name: 'styles',
      items: ['Styles', 'Format', 'Font', 'FontSize']
    }, {
      name: 'colors',
      items: ['TextColor', 'BGColor']
    }, {
      name: 'insert',
      items: ['Image', 'Smiley']
    }
  ];
  config.toolbar = 'Pure';
  return true;
};

// ---
// generated by coffee-script 1.9.2
//
//
//


CKEDITOR.editorConfig = function(config) {
  config.language = 'en';
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";
  config.toolbar_Pure = [
    '/', {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat']
    }, {
      name: 'paragraph',
      items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl']
    }, {
      name: 'links',
      items: ['Link', 'Unlink']
    }, '/', {
      name: 'styles',
      items: ['Styles', 'Format', 'Font', 'FontSize']
    }, {
      name: 'colors',
      items: ['TextColor', 'BGColor']
    }, {
      name: 'insert',
      items: ['Image', 'Table', 'HorizontalRule', 'PageBreak']
    }
  ];
  config.toolbar = 'Pure';
  return true;
};

