﻿/**
 * Simple Load More
 *
 * Version: 1.2.3
 * Author: Zeshan Ahmed
 * Website: https://zeshanahmed.com/
 * Github: https://github.com/zeshanshani/simple-load-more/
 */
!function (m) { m.fn.simpleLoadMore = function (s) { var l = m.extend({ count: 5, itemsToLoad: 5, btnHTML: "", item: "" }, s); m(this).each(function (e, o) { var t = m(this), a = t.find(l.item), n = l.btnHTML ? l.btnHTML : '<a href="#" class="load-more__btn">View More <i class="fas fa-angle-down"></i></a>', i = m(n); l.itemsToLoad; s.itemsToLoad && !isNaN(s.itemsToLoad) || (l.itemsToLoad = l.count), t.addClass("load-more"), a.addClass("load-more__item"), !t.find(".load-more__btn").length && a.length > l.count && t.append(i); var d = t.find(".load-more__btn"); d.length || (d = i), a.length > l.count && a.slice(l.count).hide(), d.on("click", function (e) { e.preventDefault(); var o = m(this), t = a.filter(":hidden"), n = t; -1 !== l.itemsToLoad && 0 < l.itemsToLoad && (n = t.slice(0, l.itemsToLoad)), 0 < n.length && n.fadeIn(), (t.length <= l.itemsToLoad || -1 === l.itemsToLoad) && o.remove() }) }) } }(jQuery);