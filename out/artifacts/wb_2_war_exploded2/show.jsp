<%@ page import="com.bean.Data" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<% Data data = new Data();%>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>作品展示</title>
  <link rel="stylesheet" href="static/css/show.css">
</head>
<body>
<!-- 导航 -->
<div class="header wrapper">
  <h1>大学生创作平台</h1>


  <div class="nav"><ul>
    <li><a href="show.jsp">展示</a></li>
    <li><a href="functionPage.jsp">创作中心</a></li>
  </ul></div>


  <!-- 提交 -->
  <div class="sign">
    <ul>
      <li><a href="functionPage.jsp">作品集锦</a></li>
      <li><a th:href="@{/#}" id="greeting">greeting</a></li>
    </ul>
  </div>
</div>

<!-- 轮播图 -->
<div class="bofang">
  <ul class="picture">
    <li class="pi"><img src="static/images/lb1.png" alt="" width="900px"></li>
    <li class="pi"><img src="static/images/lb2.png" alt="" width="900px"></li>
    <li class="pi"><img src="static/images/lb3.png" alt="" width="900px"></li>
    <li class="pi"><img src="static/images/lb4.png" alt="" width="900px"></li>
  </ul>
  <ul class="minp">
    <li class="p"><img src="static/images/lb1.png" alt="" width="40px" height="40px" ></li>
    <li class="p"><img src="static/images/lb2.png" alt="" width="40px" height="40px"></li>
    <li class="p"><img src="static/images/lb3.png" alt="" width="40px" height="40px"></li>
    <li class="p"><img src="static/images/lb4.png" alt="" width="40px" height="40px"></li>
  </ul>
  <div class="tiao">
    <div class="left"><</div>
    <div class="right">></div>
  </div>
</div>

<!-- 文字展示区 -->
<div class="masonry">
  <div class="zuop">
    <p class="first">经典美文欣赏</p>
    <ul>
      <li><div>
        <p class="title">春天</p>
        <p class="context">盼望着，盼望着，东风来了，春天的脚步近了。
          一切都像刚睡醒的样子，欣欣然张开了眼。山朗润起来了，水长起来了，太阳的脸红起来了。
          小草偷偷地从土里钻出来，嫩嫩的，绿绿的。园子里，田野里，瞧去，一大片一大片满是的。坐着，躺着，打两个滚，踢几脚球，赛几趟跑，捉几回迷藏。风轻悄悄的，草绵软软的。
          桃树、杏树、梨树，你不让我，我不让你，都开满了花赶趟儿。红的像火，粉的像霞，白的像雪。花里带着甜味；闭了眼，树上仿佛已经满是桃儿、杏儿、梨儿。花下成千成百的蜜蜂嗡嗡地闹着，大小的蝴蝶飞来飞去。野花遍地是：杂样儿，有名字的，没名字的，散在花丛里，像眼睛，像星星，还眨呀眨的。
        </p>
      </div></li>
      <li>
        <div>
          <p class="title">荷塘月色</p>
          <p class="context">曲曲折折的荷塘上面，弥望旳是田田的叶子。叶子出水很高，像亭亭旳舞女旳裙。层层的叶子中间，零星地点缀着些白花，有袅娜(niǎo,nuó)地开着旳，有羞涩地打着朵儿旳;正如一粒粒的明珠，又如碧天里的星星，又如刚出浴的美人。微风过处，送来缕缕清香，仿佛远处高楼上渺茫的歌声似的。这时候叶子与花也有一丝的颤动，像闪电般，霎时传过荷塘的那边去了。叶子本是肩并肩密密地挨着，这便宛然有了一道凝碧的波痕。叶子底下是脉脉(mò)的流水，遮住了，不能见一些颜色;而叶子却更见风致了。</p>
        </div>
      </li>
      <li> <div>
        <p class="title">从百草园到三味书屋</p>
        <p class="context">不必说碧绿的菜畦，光滑的石井栏，高大的皂荚树，紫红的桑椹;也不必说鸣蝉在树叶里长吟，肥胖的黄蜂伏在菜花上，轻捷的叫天子(云雀)忽然从草间直窜向云霄里去了。单是周围的短短的泥墙根一带，就有无限趣味。油蛉在这里低唱，蟋蟀们在这里弹琴。翻开断砖来，有时会遇见蜈蚣;还有斑蝥，倘若用手指按住它的脊梁，便会拍的一声，从后窍喷出一阵烟雾。何首乌藤和木莲藤缠络着，木莲有莲房一般的果实，何首乌有拥肿的根。有人说，何首乌根是有象人形的，吃了便可以成仙，我于是常常拔它起来，牵连不断地拔起来，也曾因此弄坏了泥墙，却从来没有见过有一块根象人样。如果不怕刺，还可以摘到覆盆子，象小珊瑚珠攒成的小球，又酸又甜，色味都比桑椹要好得远。</p>
      </div></li>
      <li> <div>
        <p class="title">说园</p>
        <p class="context">中国园林是由建筑、山水、花木等组合而成的一个综合艺术品，富有诗情画意。叠山理水要造成“虽由人作，宛自天开”的境界。山与水的关系究竟如何呢?简言之，模山范水，用局部之景而非缩小(网师园水池仿虎丘白莲池，极妙)，处理原则悉符画本。山贵有脉，水贵有源，脉源贯通，全园生动。我曾经用“水随山转，山因水活”与“溪水因山成曲折，山蹊随地作低平”来说明山水之间的关系，也就是从真山真水中所得到的启示。明末清初叠山家张南垣主张用平冈小陂、陵阜陂阪，也就是要使园林山水接近自然。如果我们能初步理解这个道理，就不至于离自然太远，多少能呈现水石交融的美妙境界。</p>
      </div></li>
      <li> <div>
        <p class="title">雅舍</p>
        <p class="context">“雅舍”最宜月夜——地势较高，得月较先。看山头吐月，红盘乍涌，一霎间，清光四射，天空皎洁，四野无声，微闻犬吠，坐客无不悄然!舍前有两株梨树，等到月升中天，清光从树间筛洒而下，地下阴影斑斓，此时尤为幽绝。直到兴阑人散，归房就寝，月光仍然逼进窗来，助我凄凉。细雨蒙蒙之际，“雅舍”亦复有趣。推窗展望，俨然米氏章法，若云若雾，一片弥漫。但若大雨滂沱，我就又惶悚不安了，屋顶浓印到处都有，起初如碗大，俄而扩大如盆，继则滴水乃不绝，终乃屋顶灰泥突然崩裂，如奇葩初绽，砉然一声而泥水下注，此刻满室狼藉，抢救无及。此种经验，已数见不鲜。</p>
      </div></li>
      <li> <div>
        <p class="title">我所知道的康桥</p>
        <p class="context">康桥的灵性全在一条河上;康河，我敢说是全世界最秀丽的一条水。河的名字是葛兰大(Granta)，也有叫康河(Kiver Cam)的，许有上下流的区别，我不甚清楚。河身多的是曲折，上游是有名的拜伦潭——“Byron’s Pool”——当年拜伦常在那里玩的;有一个老村子叫格兰骞斯德，有一个果子园，你可以躺在累累的桃李树荫下吃茶，花果会掉入你的茶杯，小雀子会到你桌上来啄食，那真是别有一番天地。这是上游;下游是从骞斯德顿下去，河面展开，那是春夏间竞舟的场所。上下河分界处有一个坝筑，水流急得很，在星光下听水声，听近村晚钟声，听河畔倦牛刍草声，是我康桥经验中最神秘的一种：大自然的优美、宁静，调谐在这星光与波光的默契中不期然的淹入了你的性灵。</p>
      </div></li>
    </ul>
  </div>
</div>
</body>
<!-- 此处为轮播图部分 -->
<script>
  const click = document.getElementById("greeting");

  click.addEventListener("click", function() {
    const now = new Date();
    const hour = now.getHours();
    let word;

    if(hour >= 0 && hour < 6) {
      word = "凌晨好,时间不早了早点休息吧";
    } else if(hour >= 6 && hour < 12) {
      word = "早上好，一日之际在于晨，又是新的一天啦";
    } else if(hour >= 12 && hour < 18) {
      word = "下午好，开始你的创作吧";
    } else {
      word = "晚上好，欢迎来到大学生创作平台";
    }
    alert(word);
  });
  let left = document.querySelector(".left")
  let right = document.querySelector(".right")
  let p = document.querySelectorAll(".p")
  let picture = document.querySelector(".picture")

  let index = 0
  let time

  function position() {
    picture.style.left = (index * -100) + "%"
  }

  function add() {
    if (index >= p.length-1) {
      index = 0
    } else {
      index++
    }
  }

  function desc() {
    if (index < 1) {
      index = p.length-1
    } else {
      index--
    }
  }

  function timer(){
    time = setInterval(() => {
      index++
      desc()
      add()
      position()
    }, 2000)
  }

  left.addEventListener("click", () => {
    desc()
    position()
    clearInterval(time)
    timer()
  })

  right.addEventListener("click", () => {
    add()
    position()
    clearInterval(time)
    timer()
  })

  for (let i = 0; i < p.length; i++) {
    p[i].addEventListener("click", () => {
      index = i
      position()
      clearInterval(time)
      timer()
    })
  }
  timer()
</script>
</html>
