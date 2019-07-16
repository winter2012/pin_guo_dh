<?php if (!defined('THINK_PATH')) exit(); echo W("Main",array('module'=>MODULE_NAME,'action'=>ACTION_NAME,'do'=>$_GET['do']));?><div class="layout-main"><div id="breadclumb" class="box"><h3><strong><?php echo lang('breadclumb_colon');?></strong><?php echo lang(MODULE_NAME);?><span></span><?php if(($type) == "1"): echo lang('tags'); else: echo lang('category'); endif; ?><span></span><?php if(empty($_GET["id"])): echo lang('add'); else: echo lang('edit'); endif; ?></h3></div><div class="box clear-fix"><div class="layout-block-header"><h2><?php echo lang('details_info');?></h2></div><div id="AccountInfo"><div class="info-block"><form method="post" action="<?php echo U('TagsType/proccess');?>" id="ajaxform" enctype="multipart/form-data"><table class="info-table"><tbody><?php if(($type) == "2"): ?><tr><th><b class="verifing">*</b><?php echo lang('category_colon');?></th><td><select name="tags_pid"><option value="0">顶级分类</option><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php if(($vo["id"]) == $info["pid"]): ?>selected="selected"<?php endif; if(($vo["id"]) == $info["id"]): ?>disabled="disabled"<?php endif; ?>><?php if(($vo["level"]) > "1"): echo str_repeat("&nbsp;",($vo['level']-1)*3);?>└─<?php endif; echo ($vo["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?></select></td></tr><?php endif; ?><tr><th><b class="verifing">*</b><?php echo lang('name_colon');?></th><td><input name="name" type="text" class="ui-text validate[required,minSize[2]]" value="<?php echo ($info["name"]); ?>" size="20"></td></tr><tr><th><b class="verifing">*</b><?php echo lang('alias_colon');?></th><td><input name="alias" type="text" class="ui-text validate[required,minSize[2]]" value="<?php echo ($info["alias"]); ?>" size="20"><span class="ui-validityshower-info">（只能使用英文字母）</span></td></tr><?php if(($type) == "2"): ?><tr><th><?php echo lang('icon_colon');?></th><td><input name="icon" type="text" class="ui-text" value="<?php echo ($info["icon"]); ?>" size="15" readonly><button class="ui-button" type="button" onclick="$.open('<?php echo U("Item/icon");?>',{width:600,height:350,title:'选择图标'})">选择图标</button></td></tr><tr><th><?php echo lang('sortorder_colon');?></th><td><input name="sort_order" type="text" class="ui-text" value="<?php echo (intval($info["sort_order"])); ?>" size="4"><span class="ui-validityshower-info">（数字越大越靠前）</span></td></tr><?php endif; ?><tr><th><?php echo lang('seo_title_colon');?></th><td><input name="title" type="text" class="ui-text" value="<?php echo ($info["title"]); ?>" size="60"></td></tr><tr><th><?php echo lang('seo_keywords_colon');?></th><td><input name="keywords" type="text" class="ui-text" value="<?php echo ($info["keywords"]); ?>" size="60"></td></tr><tr><th><?php echo lang('seo_description_info_colon');?></th><td><textarea name="description" rows="3" cols="70"><?php echo ($info["description"]); ?></textarea></td></tr><tr><th>&nbsp;</th><td><notempty name="_GET.id"><input type="hidden" name="id" value="<?php echo ($_GET["id"]); ?>" /><input type="hidden" name="tags_id" value="<?php echo ($info["id"]); ?>" /><input type="hidden" name="old_tags_pid" value="<?php echo ($info["pid"]); ?>" /><notempty><input type="hidden" name="type" value="<?php echo ($type); ?>" /><input type="submit" class="btn btn-ok" value="<?php echo lang('confirm');?>" /><a class="btn" href="<?php echo ($_SERVER['HTTP_REFERER']); ?>"><?php echo lang('goback');?></a></td></tr></tbody></table></form></div></div></div><!--.box--><link href="__PUBLIC__/Assets/js/validation/validationEngine.jquery.css" rel="stylesheet" type="text/css" /><script type="text/javascript" src="__PUBLIC__/Assets/js/validation/jquery.validationEngine.js"></script><script type="text/javascript" src="__PUBLIC__/Assets/js/validation/jquery.validationEngine-zh_CN.js"></script><script type="text/javascript" src="__PUBLIC__/Assets/js/jquery.form.js"></script><script type="text/javascript">$(function(){
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

isLink('<?php echo ($info["is_link"]); ?>');
function isLink(id){
	if(parseInt(id)==1){
		$('.link_yes').show();	
		$('.link_no').hide();
	}else{
		$('.link_yes').hide();	
		$('.link_no').show();
	}
}
</script><?php echo W("Foot");?>