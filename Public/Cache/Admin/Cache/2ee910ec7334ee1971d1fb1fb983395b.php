<?php if (!defined('THINK_PATH')) exit(); echo W("Main",array('module'=>MODULE_NAME,'action'=>ACTION_NAME,'do'=>$_GET['do']));?><link  href="__PUBLIC__/Assets/js/uploadify/uploadify.css" rel="stylesheet" type="text/css"><script src="__PUBLIC__/Assets/js/uploadify/jquery.uploadify.js" type="text/javascript"></script><script type="text/javascript">
$(function() {
	$('#file_upload').uploadify({
		'formData'     : {
			'timestamp' : '<?php echo ($_SERVER["REQUEST_TIME"]); ?>',
			'token'     : '<?php echo (md5($_SERVER["REQUEST_TIME"])); ?>',
			'water'     : 0
		},
		'onUploadSuccess' : function(file, data, response) {
			$('#image').val(data);
		},
		'swf'         : '__PUBLIC__/Assets/js/uploadify/uploadify.swf',
		'uploader'    : '__APP__/Public/upload/',
		'buttonImage' : '__PUBLIC__/Assets/js/uploadify/swfBnt.png',
		'fileTypeExts': '*.bmp;*.jpg;*.jpeg;*.gif;*.png'//文件格式限制

	});
});
</script><div class="layout-main"><div id="breadclumb" class="box"><h3><strong><?php echo lang('breadclumb_colon');?></strong><?php echo lang('index');?><span></span><?php echo lang('advert_slideshow');?><span></span><?php if(empty($_GET["id"])): echo lang('add'); else: echo lang('edit'); endif; ?></h3></div><div class="box clear-fix"><div class="layout-block-header"><h2><?php echo lang('details_info');?></h2></div><div id="AccountInfo"><div class="info-block"><form method="post" action="<?php echo U('Extend/proccess/');?>" id="ajaxform" enctype="multipart/form-data"><table class="info-table"><tbody><tr><th><b class="verifing">*</b><?php echo lang('title_name_colon');?></th><td><input name="name" type="text" class="ui-text validate[required,minSize[2]]" value="<?php echo ($info["name"]); ?>" size="60"></td></tr><tr><th><b class="verifing">*</b><?php echo lang('link_address_colon');?></th><td><input name="link" type="text" class="ui-text validate[required]" value="<?php if(empty($info["link"])): ?>http://<?php else: echo ($info["link"]); endif; ?>" size="60"><span class="ui-validityshower-info">（示例：http://www.baidu.com）</span></td></tr><tr><th><?php echo lang('目标_colon');?></th><td><select name="target"><option value="_blank">新窗口弹出</option><option value="_self" <?php if(($info["target"]) == "_self"): ?>selected="selected"<?php endif; ?>>本窗口跳转</option></select></td></tr><tr><th><?php echo lang('status_colon');?></th><td><input type="radio" name="status" value="1" <?php if(($info["status"]) != "0"): ?>checked="checked"<?php endif; ?> /><label class="ui-group-label"><?php echo lang('show');?></label><input type="radio" name="status" value="0" <?php if(($info["status"]) == "0"): ?>checked="checked"<?php endif; ?> /><label class="ui-group-label"><?php echo lang('hide');?></label></td></tr><tr><th><?php echo lang('sortorder_colon');?></th><td><input name="sort_order" type="text" class="ui-text" value="<?php echo (intval($info["sort_order"])); ?>" size="4"><span class="ui-validityshower-info">（数字越大越靠前）</span></td></tr><tr><th><?php echo lang('image_colon');?></th><td><input name="image" id="image" type="text" class="ui-text" value="<?php echo ($info["image"]); ?>" size="40" style="float:left"><input id="file_upload" name="file_upload" type="file" multiple="true" value="<?php echo lang('upload');?>"><span class="ui-validityshower-info">（图片宽度应与网站宽度一致，高度不限）</span></td></tr><tr><th><?php echo lang('description_info_colon');?></th><td><textarea name="description" id="description" class="insert-text input-textarea" cols="80" rows="4"><?php echo ($info["description"]); ?></textarea></td></tr><tr><th>&nbsp;</th><td><?php if(empty($info["id"])): ?><input type="hidden" name="create_time" value="<?php echo time();?>"><?php else: ?><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>" /><?php endif; ?><input type="hidden" name="module" value="advert" /><input type="submit" class="btn btn-ok" value="<?php echo lang('confirm');?>" /><a class="btn" href="<?php echo ($_SERVER['HTTP_REFERER']); ?>"><?php echo lang('goback');?></a></td></tr></tbody></table></form></div></div></div><!--.box--><link href="__PUBLIC__/Assets/js/validation/validationEngine.jquery.css" rel="stylesheet" type="text/css" /><script type="text/javascript" src="__PUBLIC__/Assets/js/validation/jquery.validationEngine.js"></script><script type="text/javascript" src="__PUBLIC__/Assets/js/validation/jquery.validationEngine-zh_CN.js"></script><script type="text/javascript" src="__PUBLIC__/Assets/js/jquery.form.js"></script><script type="text/javascript">
    $(function(){
        $("#ajaxform").validationEngine('attach', {promptPosition : "centerRight", autoPositionUpdate : true});	
        $('#ajaxform').ajaxForm({
            timeout: 5000,
            error:function(){ $('#ajaxLoading').hide();alert("<?php echo lang('ajaxError');?>");},
            beforeSubmit:function(){ $('#ajaxLoading').show();},
            success:function(data){ 
                $('#ajaxLoading').hide();
                if(data.status==1){
                    var redirectURL = "<?php echo ($_SERVER['HTTP_REFERER']); ?>";
                    $.alert(data.info,data.status,function(){window.location.href=redirectURL});
                }else{
                    $.alert(data.info,data.status);
                }
            },
            dataType: 'json'
        });
    });
    </script><?php echo W("Foot");?>