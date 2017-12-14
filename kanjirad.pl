#!/usr/bin/env perl

use utf8;
binmode STDOUT, ":utf8";

%radicals = (
#⼀
"one", "一",
"ichi", "一",
#⼁ (丨)
"line", "｜",
#⼂
"dot", "丶",
#⼃ (丿)
"slash", "ノ",
"no", "ノ",
#⼄
"second", "乙",
"otsu", "乙",
#⼅
"hook", "亅",
#⼆
"two", "二",
"ni", "二",
#⼇
"lid", "亠",
#⼈
"man", "人",
"human", "人",
#⺅ (亻)
"person", "化",
"personleft", "化",
"standinghuman", "化",
"i", "化",
#?
"humanroof", "个",
#⼉
"legs", "儿",
#⼊
"enter", "入",
#⼋ (八)
"eight", "ハ",
"ha", "ハ",
"hachi", "ハ",
#?
"upsidedowneight", "并",
#⼌
"downbox", "冂",
#⼍
"cover", "冖",
#⼎
"ice", "冫",
#⼏
"table", "几",
#⼐
"openbox", "凵",
#⼑
"knife", "刀",
#⺉ (刂)
"knife2", "刈",
"kniferight", "刈",
"standingknife", "刈",
"ri", "刈",
#⼒
"power", "力",
"ka", "力",
"chikara", "力",
#⼓
"wrap", "勹",
#⼔
"spoon", "匕",
#⼕
"rightopenbox", "匚",
#⼗
"ten", "十",
#⼘
"divination", "卜",
"to", "卜",
#⼙
"seal", "卩",
"P", "卩",
#⼚
"cliff", "厂",
#⼛
"private", "厶",
"mu", "厶",
#⼜
"again", "又",
#マ
"ma", "マ",
#"九",
#ユ
"yu", "ユ",
#"乃",
#⻌⻍⻎ (辶)
"walk", "込",
"walk1", "込",
"walk2", "込",
"simplifiedwalk", "込",
#⼝
"mouth", "口",
"kuchi", "口",
"ro", "口",
#⼞
"enclosure", "囗",
#⼟
"earth", "土",
#⼠
"scholar", "士",
"gentleman", "士",
"samurai", "士",
#⼡
"go", "夂",
#⼣
"evening", "夕",
"ta", "夕",
#⼤
"big", "大",
"dai", "大",
#⼥
"woman", "女",
"onna", "女",
#⼦
"child", "子",
"ko", "子",
#⼧
"roof", "宀",
"crown", "宀",
"shapedcrown", "宀",
"hat", "宀",
#⼨
"inch", "寸",
#⼩
"small", "小",
#⺌⺍ (小 at top)
"small1", "尚",
"small2", "尚",
"smalltop", "尚",
#⼪
"lame", "尢",
#⼫
"corpse", "尸",
#⼬
"sprout", "屮",
#⼭
"mountain", "山",
"yama", "山",
#⼮
"river", "川",
"kawa", "川",
#⼯
"work", "工",
"e", "工",
#⼰
"oneself", "已",
#⼱
"turban", "巾",
#⼲
"dry", "干",
#⼳
"shortthread", "幺",
"tiny", "幺",
#⼴
"dottedcliff", "广",
#⼵
"longstride", "廴",
#⼶
"twohands", "廾",
#⼷
"shoot", "弋",
#⼸
"bow", "弓",
#⼹⺕ (彐)
"snout", "ヨ",
"snout2", "ヨ",
"yo", "ヨ",
#⺔
"snout1", "彑",
#⼺
"bristle", "彡",
#⼻
"step", "彳",
#⺖ (忄)
"heart1", "忙",
"heartleft", "忙",
"standingheart", "忙",
#⺘ (扌)
"handleft", "扎",
#⺡ (氵)
"water1", "汁",
"waterleft", "汁",
#⺨ (犭)
"dogleft", "犯",
#⺾⺿ (艹)
"grasstop", "艾",
"grass1", "艾",
"grass2", "艾",
#⻏ (邑 at right)
"city", "邦",
"cityright", "邦",
"Bright", "邦",
#⻖ (阝)
"mound2", "阡",
"cityleft", "阡",
"Bleft", "阡",
#?
"tobe", "也",
#?
"deceased", "亡",
#?
"reachout", "及",
#?
"longtime", "久",
#⺹ (耂)
"old", "老",
#⼼
"heart", "心",
#⼽
"halberd", "戈",
#⼾
"door", "戸",
#⼿
"hand", "手",
#⽀
"branch", "支",
#?
"foldingchair", "攵",
#⽂
"script", "文",
#⽃
"dipper", "斗",
#⽄
"axe", "斤",
#⽅
"square", "方",
#⽆
"not1", "无",
"wu", "无",
#⽇
"sun", "日",
#⽈
"say", "曰",
#⽉
"moon", "月",
"month", "月",
#⽊
"tree", "木",
#⽋
"lack", "欠",
#⽌
"stop", "止",
#⽍
"death", "歹",
#⽎
"weapon", "殳",
#⽐
"compare", "比",
#⽑
"fur", "毛",
"hair", "毛",
#⽒
"clan", "氏",
#⽓
"steam", "气",
#⽔
"water", "水",
#⽕
"fire", "火",
#⺣ (灬)
"firebottom", "杰",
#⽖
"claw", "爪",
#⽗
"father", "父",
#⽘
"doublex", "爻",
"xx", "爻",
#⽙
"halftreetrunk", "爿",
#⽚
"slice", "片",
#⽜
"cow", "牛",
#⽝
"dog", "犬",
"inu", "犬",
#⺭ (礻)
"spirit2", "礼",
"ne", "礼",
#⽟ (玉)
"jade", "王",
"jewel", "王",
"king", "王",
#?
"beginning", "元",
#?
"well", "井",
#?
"not2", "勿",
#?
"reasonable", "尤",
#?
"five", "五",
"5", "五",
#?
"barracks", "屯",
#?
"commadesign", "巴",
"comma", "巴",
#⽞
"profound", "玄",
#⽠
"melon", "瓜",
#⽡
"tile", "瓦",
#⽢
"sweet", "甘",
#⽣
"life", "生",
#⽤
"use", "用",
#⽥
"field", "田",
#⽦
"boltofcloth", "疋",
"bolt", "疋",
#⽧
"sickness", "", #TODO
#⽨
"dottedtent", "癶",
#⽩
"white", "白",
#⽪
"skin", "皮",
#⽫
"dish", "皿",
#⽬
"eye", "目",
#⽭
"spear", "矛",
#⽮
"arrow", "矢",
#⽯
"stone", "石",
#⽰
"spirit", "示",
#⽱
"track", "", #TODO
#⽲
"grain", "禾",
#⽳
"cave", "穴",
"hole", "穴",
#⽴
"stand", "立",
#⻂ (衤)
"clothesleft", "", #TODO
#?
"generation", "世",
"world", "世",
#?
"gigantic", "巨",
"giant", "巨",
#?
"tome", "冊",
"satsu", "冊",
#⺟
"mother", "母",
#⺫⺲ (目 at top, 罒)
"eyetop", "", #TODO
"net2", "", #TODO
#⽛
"fang", "牙",
#⽵
"bamboo", "竹",
#⽶
"rice", "米",
#⽷
"silk", "糸",
#⽸
"jar", "缶",
#⽺
"sheep", "羊",
#⽻
"feather", "羽",
#⽽
"and", "而",
#⽾
"plow", "耒",
"plough", "耒",
#⽿
"ear", "耳",
#⾀
"brush", "聿",
#⾁
"meat", "肉",
#⾃
"self", "自",
#⾄
"arrive", "至",
#⾅
"mortar", "臼",
#⾆
"tongue", "舌",
#⾈
"boat", "舟",
#⾉
"stopping", "艮",
#⾊
"color", "色",
"colour", "色",
#⾌
"tiger", "虍",
#⾍
"insect", "虫",
#⾎
"blood", "血",
#⾏
"walkenclosure", "行",
#⾐
"clothes", "衣",
#⾑
"west", "西",
#?
"retainer", "臣",
#⾒
"see", "見",
#⾓
"horn", "角",
#⾔
"speech", "言",
#⾕
"valley", "谷",
#⾖
"bean", "豆",
#⾗
"pig", "豕",
#⾘
"badger", "豸",
#⾙
"shell", "貝",
#⾚
"red", "赤",
#⾛
"run", "走",
#⾜
"foot", "足",
#⾝
"body", "身",
#⾞
"cart", "車",
#⾟
"bitter", "辛",
#⾠
"morning", "辰",
#⾣
"wine", "酉",
#⾤
"distinguish", "釆",
#⾥
"village", "里",
#?
"dancing", "舛",
#?
"wheat", "麦",
#⾦
"gold", "金",
#⾧
"long", "長",
#⾨
"gate", "門",
#⾪
"slave", "隶",
#⾫
"shorttailedbird", "隹",
#⾬
"rain", "雨",
#⾭
"blue", "青",
#⾮
"wrong", "非",
#?
"cover2", "奄",
#?
"mount", "岡",
#?
"excuse", "免",
#⻫
"even", "斉",
"jsimplifiedeven", "斉",
"equal", "斉",
#⾯
"face", "面",
#⾰
"leather", "革",
#⾲
"leek", "韭",
#⾳
"sound", "音",
#⾴
"leaf", "頁",
#⾵
"wind", "風",
#⾶
"fly", "飛",
#⾷
"eat", "食",
#⾸
"head", "首",
#⾹
"fragrant", "香",
#?
"goods", "品",
#⾺
"horse", "馬",
#⾻
"bone", "骨",
#⾼
"tall", "高",
#⾽
"hair2", "髟",
#⾾
"fight", "鬥",
);

open(KRADFILE, "<:utf8", "kradfile");

foreach $radical (@ARGV) {
  if ($radical =~ /^-o$/) {
    $only = 1;
  }
  else {
    if ($query) {
      if ($only) {
        print STDERR "Error: only one radical can be specified for -o\n";
        exit
      }
      $query .= " ";
    }
	if (!$radicals{$radical}) {
		print STDERR "Error: unknown radical $radical\n";
		exit
	}
    $query .= $radicals{$radical};
  }
}
print "Searching for $query";
print " only" if $only;
print "\n";

while (<KRADFILE>) {
  my($line) = $_;
  chomp($line);
  if ($line =~ /(.)\s:\s(.*)$/) {
    $kanji = $1;
    $radical_list = $2;
    if ($only) {
      if ($radical_list =~ /^$query$/) {
         $match = 1;
      }
      else {
         $match = 0;
      }
    }
    else {
      $match = 1;
      foreach $radical (@ARGV) {
        unless ($radical_list =~ /$radicals{$radical}/) {
          $match = 0;
        }
      }
    }
    if ($match) {
      #print "$kanji\n";
      print "$line\n";
    }
  }
}
