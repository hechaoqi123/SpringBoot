/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	config.language = 'zh-cn';
	config.contentsCss = "../skin/view.css";
	config.extraPlugins = 'tableresize';
	config.removePlugins = 'elementspath';
	config.filebrowserImageUploadUrl = "../view/ckeUpload.aspx?type=image";
	config.removeButtons = 'Underline,Subscript,Superscript';
	config.toolbarCanCollapse = false;
	config.resize_enabled = false; 
	config.pasteFromWordRemoveStyles = true;
	config.allowedContent=true;
	config.image_previewText = " ";
	config.toolbar = [['Font', 'FontSize'], ['Bold', 'Italic', 'Underline', 'NumberedList', 'BulletedList', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'Indent', 'Outdent'], ['TextColor', 'Link', 'Table', 'Image', 'Flash', 'Smiley', 'RemoveFormat', 'Source']];
	config.toolbar_basic = [['Bold', 'Italic', 'Underline', 'NumberedList', 'BulletedList', 'JustifyLeft', 'JustifyCenter', 'JustifyRight']];
	config.toolbar_formDesign = [['Styles', 'Format', 'Font', 'FontSize', 'Bold', 'Italic', 'Underline', 'NumberedList', 'BulletedList', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'Indent', 'Outdent', 'TextColor', 'BGColor'], 
	['Cut', 'Copy', 'Paste', 'PasteText', 'Link', 'Table', 'Image', 'Flash', 'Smiley', 'SpecialChar', '-', 'Checkbox', 'Radio', 'TextField', 'Button', 'HiddenField', '-', 'Undo', 'Redo', 'Find', 'Replace', 'SelectAll', 'RemoveFormat', 'Maximize', 'Source']];
};
