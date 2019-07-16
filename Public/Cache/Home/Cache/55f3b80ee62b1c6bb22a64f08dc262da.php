<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><?php echo ($seo["title"]); ?></title>
    <meta name="keywords" content="<?php echo ($seo["keywords"]); ?>">
    <meta name="description" content="<?php echo ($seo["description"]); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/Skins/Mobile/mobile.css" />
</head>
<body class="blank blank-index" style="" quick-markup_injected="true">
    <div class="body2">
        <div class="pg-wrapper" id="wrapper">
            <header class="pg-hd"><a href="/" class="logo"><img class="mlogo" src="<?php if(empty($config["logo"])): ?>__PUBLIC__/Skins/4660.png<?php else: ?>__PUBLIC__/Uploads<?php echo ($config["logo"]); endif; ?>" alt="<?php echo ($config["title"]); ?>" /></a><a href="javascript:;" id="menuButton" class="iMenuA"></a></header>
            <div class="pg-top">
                <div id="searchBox">
                    <form id="searchForm" name="searchForm" action="http://m.baidu.com/s" method="get">
                    <input type="text" id="search_input" name="word" tabindex="1" value="" placeholder="百度一下">
                    <input type="submit" id="search_button" value=" ">
                    </form>
                </div>
                <div class="hotSearchBox">
                    <div id="hotBox">
                        <ul class="hotSearch">
                            <li <?php if(str_replace('/','',ACTION_NAME) == 'index'): ?>class="active"<?php endif; ?>><a href="index.php" id="home" ><?php echo lang('index');?></a>
                            <?php if(is_array($navigation)): $i = 0; $__LIST__ = $navigation;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;?><li <?php if($actionName == $nav['alias']): ?>class="active"<?php endif; ?>><a href="<?php echo U('Index/'.$nav['alias']);?>"><?php echo ($nav["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>	
                        </ul>
                    </div>
                </div>
            </div>
            <div class="pg-main">
                <div class="job">
                    <ul class="jobList">
                        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$li): $mod = ($i % 2 );++$i;?><li>
                            <a href="<?php echo ($li["url"]); ?>" target="_blank" rel="nofollow" class="allClick">
                            <div class="jobRight"><span class="jiantou"></span></div>
                            <div class="jobLeft">
                                <h3><span href="<?php echo ($li["url"]); ?>"><?php echo ($li["title"]); ?></span></h3>
                                <p><span><?php echo ($li["description"]); ?></span></p>
                            </div>
                            </a>
                        </li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                    <div class="loading"></div>
                    <a href="javascript:;" id="getMore">点击加载更多</a>
                </div>
            </div>
            <div class="pg-bottom">
				<a href="javascript:;" id="gotop" class="gotoTop">回顶部</a>
				<div class="login"><a href="index.php" rel="nofollow">首页</a></div>
			</div>
        </div><!--.pg-wrapper-->
		<a href="javascript:;" id="gotoTop" class="gotoTop" style="display: none;"></a>
    
		<footer class="pg-ft">
			<?php echo ($config["footer"]); ?>
			
		</footer>
	</div><!--.body2-->    
    
    <div class="pg-floor" style="display: none;">
        <div class="fHeader"><a href="<?php echo U('/');?>" class="logo"><?php echo ($config["title"]); ?></a></div>
        <div class="fList">
            <a href="index.php?s=/Index/index">首页</a>
            <?php if(is_array($navigation)): $i = 0; $__LIST__ = $navigation;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Index/'.$nav['alias']);?>"><?php echo ($nav["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>	
        </div>
    </div>
    
<script type="text/javascript" src="__PUBLIC__/Skins/jquery.min.js"></script>
<script type="text/javascript" src="__PUBLIC__/Skins/mobile.js"></script>
</body>
</html>