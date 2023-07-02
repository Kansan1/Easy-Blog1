(function() {
    // 获取页面元素
    const searchInput = document.querySelector("#search-input");
    const titleList = document.querySelector("#title-list");
    const contentBox = document.querySelector("#content-box");
  
    // 在这里获取由控制器传递的数据数组，并将其命名为data
    const data = [
      { "title": "如何学习编程？", "context": "学习编程需要掌握基本的编程语言和算法，建议先从Python入手。同时需要不断练习，多写代码。" },
      { "title": "如何学好英语？", "context": "学习英语需要多听、多说、多读、多写，可以通过看英文电影、听英文歌曲、读英文文章等方式提高。" },
      { "title": "如何学好数学？", "context": "学习数学需要掌握基本的概念和定理，建议通过练习例题、做试卷来提高。" },
      { "title": "如何学好物理？", "context": "学习物理需要对基本概念有清晰的认识，建议多做例题，培养物理思维。" }
    ];
  
    // 监听搜索框输入事件
    searchInput.addEventListener("input", function() {
      // 清空标题列表
      titleList.innerHTML = "";
  
      // 获取搜索关键词
      const keyword = this.value.trim();
  
      if (keyword === "") {
        return;
      }
  
      // 在数据数组中查找包含搜索关键词的标题
      const result = data.filter(function(item) {
        return item.title.indexOf(keyword) !== -1;
      });
  
      // 将符合条件的标题添加到标题列表中
      result.forEach(function(item) {
        const titleDiv = document.createElement("div");
        titleDiv.className = "title-item";
        titleDiv.innerText = item.title;
        titleDiv.addEventListener("click", function() {
          contentBox.innerHTML = item.context;
        });
        titleList.appendChild(titleDiv);
      });
    });
  })();
  