<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><?php echo ($seo["title"]); ?></title>
        <meta name="keywords" content="<?php echo ($seo["keywords"]); ?>">
        <meta name="description" content="<?php echo ($seo["description"]); ?>">
		<link rel="stylesheet" type="text/css" href="__PUBLIC__/Skins/basic.css?v=<?php echo (VERSION); ?>" />
		<link href="__PUBLIC__/Assets/css/font.css?v=<?php echo (VERSION); ?>" rel="stylesheet" type="text/css" />
		<link href="__PUBLIC__/Assets/css/font-ie7.css?v=<?php echo (VERSION); ?>" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="__PUBLIC__/Skins/<?php echo C('DEFAULT_THEME');?>/css.css?v=<?php echo (VERSION); ?>" />
		<link href="__PUBLIC__/Skins/favicon.ico" rel="shortcut icon">
        <script type="text/javascript" src="__PUBLIC__/Skins/jquery.min.js?v=<?php echo (VERSION); ?>"></script>
        <script type="text/ecmascript" src="__PUBLIC__/Skins/common.js?v=<?php echo (VERSION); ?>"></script>
		<style>
			.wrap{width:<?php echo $config['width'] ?>px;min-width:<?php echo $config['width'] ?>px;}
			<?php if(empty($config["category_show_description"])): ?>.time-list li{height:32px;}<?php endif; ?>
		</style>
    </head>
    <body data-spy="scroll" data-target="#nav-plane" data-offset="140">
        <div id="topbar">
            <div class="wrap">
                <div class="top-info left">
                    <span class="welcome"><?php echo ($config["sub_title"]); ?></span>
                </div>
                <div class="top-link right">
                    <a href="javascript:;" onClick="addFav('http://<?php echo ($_SERVER["HTTP_HOST"]); ?>','<?php echo ($config["title"]); ?>')"><i class="icon-folderopen"></i>按Ctrl+D收藏</a>
                </div>
            </div>
        </div><!--#topbar-->
        
        <div id="topmain">
            <div class="wrap">
                <div class="logo left">
                	<a href="<?php echo U('/');?>"><img src="<?php if(empty($config["logo"])): ?>__PUBLIC__/Skins/4660.png<?php else: ?>__PUBLIC__/Uploads<?php echo ($config["logo"]); endif; ?>" alt="<?php echo ($config["title"]); ?>" /></a>
                </div>
                <div class="search">
	<form id="search" action="http://<?php echo ($_SERVER['HTTP_HOST']); echo C('ROOT_FILE');?>" target="_self">
		<div class="opt" id="search-opt">
			<a href="javascript:;"><img id="search-img" src="__PUBLIC__/Assets/img/favicon.ico"></a>
			<div class="list">
				<a href="http://<?php echo ($_SERVER['HTTP_HOST']); echo C('ROOT_FILE');?>" data-kw="kw"><img src="__PUBLIC__/Assets/img/favicon.ico"><span>站内</span></a>
				<a href="https://www.baidu.com/baidu" data-kw="word"><img src="__PUBLIC__/Skins/baidu.gif"><span>百度</span></a>
				<a href="http://www.haosou.com/s" data-kw="q"><img src="__PUBLIC__/Skins/360.png"><span>好搜</span></a>
				<a href="https://gg.wen.lu/search" data-kw="q"><img src="__PUBLIC__/Skins/google.png"><span>谷歌</span></a>
				<a href="https://s.taobao.com/search?" data-kw="q"><img src="https://www.taobao.com/favicon.ico"><span>淘宝</span></a>
			</div>
		</div>
		<input type="text" id="search-kw" class="search-input" name="kw" placeholder="<?php echo lang('search');?>" autocomplete="off" value="<?php echo ($_GET['kw']); ?>">
		<input name="ie" type="hidden" value="utf-8">
		<input name="a" type="hidden" value="search">
		<input type="submit" class="search-button" value="">
	</form>
</div> 
            </div>
        </div><!--#topmain-->
      
        <div id="topnav">
            <div class="wrap">
                <div class="nav">
                    <ul>
                        <li <?php if(str_replace('/','',ACTION_NAME) == 'index'): ?>class="active"<?php endif; ?>><a href="<?php echo U('/');?>" id="home" ><?php echo lang('index');?></a>
                        <?php if(is_array($navigation)): $i = 0; $__LIST__ = $navigation;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;?><li <?php if($actionName == $nav['alias']): ?>class="active"<?php endif; ?>><a href="<?php echo U('Index/'.$nav['alias']);?>"><?php echo ($nav["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>	
					</ul>
                </div>
            </div>
        </div><!--#topnav--> 

<div id="container" class="wrap">
    
    <div class="section mtop" id="<?php echo ($vo["alias"]); ?>">
        <h1 class="title">
            <i class="icon-<?php echo ($vo["icon"]); ?>"></i><?php echo lang('search');?>
        </h1>
        <div class="content">
            <ul class="time-list clearfix">
            	<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$li): $mod = ($i % 2 );++$i;?><li>
					<a href="<?php echo ($li["url"]); ?>" target="_blank" rel="nofollow"><?php echo ($li["title"]); ?> <?php if(($li["is_hot"]) == "1"): ?><img src="__PUBLIC__/Skins/hot.gif" /><?php endif; ?></a>
					<p><?php echo ($li["description"]); ?></p>
				</li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
    </div><!--.section-->
    
</div><!--#container-->



        <div id="footer">
        	<div class="wrap">
                <div class="footer-top">
                    <ul class="left">
                    	<?php if(is_array($link)): $i = 0; $__LIST__ = $link;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["link"]); ?>" target="_blank"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
					<div class="right"><a href="#"><img src="__PUBLIC__/Skins/gobackimg.jpg"></a></div>
                </div>
                <div class="footer-bottom">
                	<dl class="clearfix">
                    	<dt><a href="<?php echo U('/');?>"><img src="<?php if(empty($config["logo"])): ?>__PUBLIC__/Skins/4660.png<?php else: ?>__PUBLIC__/Uploads<?php echo ($config["logo"]); endif; ?>" alt="<?php echo ($config["title"]); ?>" /></a></dt>
                        <dd>
                        	<div class="copyright">
								<?php echo ($config["footer"]); ?>
							</div>
							<!--
                            <div class="linklist">
                            	<ul>
                                	<li><a href="#">关于我们</a></li>
                                    <li><a href="#">联系我们</a></li>
                                    <li><a href="#">友情链接</a></li>
                                </ul>
                            </div>
							-->
                        </dd>
                    </dl>
                </div>
            </div>
        </div><!--#footer-->
<script>
function countClick(url){
	$.post("http://<?php echo ($_SERVER['HTTP_HOST']); echo C('ROOT_FILE');?>?a=click",{url:url});
}
</script> 
    </body>
</html>