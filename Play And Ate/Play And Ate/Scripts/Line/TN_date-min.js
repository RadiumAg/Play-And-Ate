(function(a){a.fn.TN_date=function(F){F=jQuery.extend({dateW:"tnDateW",tnStartDate:"date_t_pre",tnEndDate:"date_t_next",leaveDate:360},F);var r=this;var m=a(this[0]);var G=a(this[1]);var w;var A;var J;var h;var j=new Array("1\u6708","2\u6708","3\u6708","4\u6708","5\u6708","6\u6708","7\u6708","8\u6708","9\u6708","10\u6708","11\u6708","12\u6708");var u,H,I,L,t,d;var n,k,g,C;function K(){l(m);l(G);f();w=a('<div id="'+F.dateW+'"></div>').appendTo("body");w.mousedown(function(M){M.stopPropagation()});w.hide();A=a('<div id="'+F.tnStartDate+'"></div>').appendTo(w);J=a('<div id="'+F.tnEndDate+'"></div>').appendTo(w);a("#"+F.dateW+" .tdCobj").live("mouseover",function(){a(this).addClass("tdCobjS")}).live("mouseout",function(){a(this).removeClass("tdCobjS")}).live("click",function(){h.val(a(this).attr("id"));h.css({color:"#000"});w.hide();a(document).unbind("mousedown",p);
																																																																																																																																																																																																																							
																																																																																																																																																																																																																if(																																																																																																																																																																																																							h.attr("id")==m.attr("id")){if(G.val()!="yyyy-mm-dd"&&G.val()!=""){var S=m.val().split("-");var R=G.val().split("-");var M=new Date(S[0],S[1]-1,S[2]);var N=new Date(R[0],R[1]-1,R[2]);var Q=M;if(M>=N){G.val(z(M,1))}else{var P=z(Q,F.leaveDate-1).split("-");var O=new Date(P[0],P[1]-1,P[2]);if(O<N){M=new Date(S[0],S[1]-1,S[2]);G.val(z(M,1))}}}G.focus()}});a("#"+F.dateW+" a.pre_link").live("click",function(){return E("pre")});a("#"+F.dateW+" a.next_link").live("click",function(){return E("next")});m.focus(function(){D(a(this))}).blur(function(){q(a(this))}).keydown(function(){return false}).mousedown(function(M){M.stopPropagation()});G.focus(function(){D(a(this))}).blur(function(){q(a(this))}).keydown(function(){return false}).mousedown(function(M){M.stopPropagation()});a(window).resize(function(){if(w.is(":visible")){v()}})}function z(O,Q){var N=O;N.setDate(N.getDate()+Q);var R=N.getYear();R=R%100;R=((R<50)?(2000+R):(1900+R));var M=N.getMonth()+1;var P=N.getDate()-1;
																																																																																																																																																																																										   
																																																																																																																																																																																									   
																																																																																																																																																																																										   return R+"-"+M+"-"+P}function l(M){if(M.val()=="yyyy-mm-dd"||M.val()==""){if(M.val()==""){M.val("yyyy-mm-dd")}M.css({color:"#999"})}else{}}function D(Q){h=Q;var N=false;if((Q.val()=="yyyy-mm-dd"&&h.attr("id")==m.attr("id"))||(Q.val()=="yyyy-mm-dd"&&m.val()=="yyyy-mm-dd"&&h.attr("id")==G.attr("id"))){Q.val("").css({color:"#000"});C=t;n=I;k=L;g=d}else{if(h.attr("id")==m.attr("id")){var M=Q.val().split("-");var P=new Date(M[0],M[1]-1,M[2]);n=P.getDay();k=P.getMonth();g=P.getYear();g=g%100;g=((g<50)?(2000+g):(1900+g));C=P.getDate()}else{if(h.attr("id")==G.attr("id")){if(m.val()!="yyyy-mm-dd"){var M;if(G.val()!="yyyy-mm-dd"){M=Q.val().split("-")}else{M=m.val().split("-")}var O=m.val().split("-");if(M[0]==O[0]&&M[1]==O[1]){N=true}var P=new Date(M[0],M[1]-1,M[2]);n=P.getDay();k=P.getMonth();g=P.getYear();g=g%100;g=((g<50)?(2000+g):(1900+g));C=P.getDate()}else{var M=Q.val().split("-");var P=new Date(M[0],M[1]-1,M[2]);n=P.getDay();k=P.getMonth();g=P.getYear();g=g%100;g=((g<50)?(2000+g):(1900+g));C=P.getDate()}}}}B(N);v();w.show();e()}function B(Q){var M=n;var T=k;var O=g;var N=C;var S=c("n");n=S.xDay;k=S.xMonth;g=S.xYear;C=1;var R,P;if((O==d&&T==L)||Q){R=('<div class="date_t_b"><div id="pre_month"><span class="pre_link">&lt;&lt;</span>'+O+"\u5e74"+j[T]+"</div>")+x(O,T,N,M)}else{R=('<div class="date_t_b"><div id="pre_month"><a href="#" class="pre_link">&lt;&lt;</a>'+O+"\u5e74"+j[T]+"</div>")+x(O,T,N,M)}P=('<div class="date_t_b"><div id="next_month"><a href="#" class="next_link">&gt;&gt;</a>'+S.xYear+"\u5e74"+j[S.xMonth]+"</div>")+x(S.xYear,S.xMonth,1,S.xDay);A.html(R);J.html(P);y()}function v(){var O=h.offset();var M=O.left;var N=O.top+h.outerHeight()+1;w.css({left:M,top:N})}function q(M){if(M.val()==""){M.val("yyyy-mm-dd");M.css({color:"#999"})}else{if(M.val()!="yyyy-mm-dd"){M.css({color:"#000"})}}}function f(){H=new Date();var M=z(H,1).split("-");H=new Date(M[0],M[1]-1,M[2]);I=H.getDay();L=H.getMonth();t=H.getDate();d=H.getYear();d=d%100;d=((d<50)?(2000+d):(1900+d));C=t;n=I;k=L;g=d}function e(){a(document).unbind("mousedown",p);a(document).mousedown(p)}function y(){var O=A.find("tr").length;var N=J.find("tr").length;var M="<tr><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>";if(O>N){J.find("table").append(M)}else{if(N>O){A.find("table").append(M)}else{}}}function p(){a(document).unbind("mousedown",p);w.hide();i(m);i(G)}function i(M){if(M.val()==""){M.val("yyyy-mm-dd");M.css({color:"#999"})}else{if(M.val()!="yyyy-mm-dd"){M.css({color:"#000"})}else{}}}function E(P){var Q;var M;if(P=="pre"){Q=c("p");n=Q.xDay;k=Q.xMonth;g=Q.xYear;M=c("p");var O,N;if(M.xYear==d&&M.xMonth==L){O=o(d,L,d,L,t,I,"p",true,true);N=o(g,k,g,k,1,n,"n",true,true)}else{O=o(M.xYear,M.xMonth,M.xYear,M.xMonth,1,M.xDay,"p",false,true);N=o(g,k,g,k,1,n,"n",true,true)}A.html(O);J.html(N)}else{Q=c("n");var O,N;O=o(g,k,g,k,1,n,"p",false,false);N=o(Q.xYear,Q.xMonth,Q.xYear,Q.xMonth,1,Q.xDay,"n",true,false);A.html(O);J.html(N)}y();n=Q.xDay;k=Q.xMonth;g=Q.xYear;return false}function o(O,S,M,X,U,W,T,P,R){var Q="";var V=false;if(h.attr("id")==G.attr("id")&&m.val()!=""&&m.val()!="yyyy-mm-dd"&&R){var N=m.val().split("-");if(g==N[0]&&k==N[1]){V=true}}if(T=="p"){Q+='<div class="date_t_b"><div id="pre_month">';if(P||V){Q+='<span class="pre_link">&lt;&lt;</span>'}else{Q+='<a href="#" class="pre_link">&lt;&lt;</a>'}}else{Q+='<div class="date_t_b"><div id="next_month"><a href="#" class="next_link">&gt;&gt;</a>'}Q+=(O+"\u5e74"+j[S]+"</div>"+x(M,X,U,W));return Q}function c(R){var N=0;var Q=0;if(R=="n"){if(k<11){Q=k+1;N=g}else{Q=0;N=g+1}}else{if(k>0){Q=k-1;N=g}else{Q=11;N=g-1}}
																																																																																																																																																																																										   
																																																																																																																																																																																										   var M=new Date(N,Q,1);var O=M.getDay();
																																																																																																																																																																																										   
	
	var S=M.getMonth();var P=M.getYear();P=P%100;P=((P<50)?(2000+P):(1900+P));return{xYear:P,xMonth:S,xDay:O}}function x(Q,aa,X,T){var Z;var U;var ab=false;var P=false;if(m.val()!=""&&m.val()!="yyyy-mm-dd"){ab=true;Z=m.val().split("-")}if(G.val()!=""&&G.val()!="yyyy-mm-dd"){P=true;U=G.val().split("-")}u=new Array(31,28,31,30,31,30,31,31,30,31,30,31);if(((Q%4==0)&&!(Q%100==0))||(Q%400==0)){u[1]++}var N="";var S='<td class="tdCobj tdCobjN"';var ae;var M;if(h.attr("id")==m.attr("id")){
		if(Q==d&&aa==L){
			ae=t
			}else{ae=1}}
	else
	{
		
		if(h.attr("id")==G.attr("id"))
																																																																																																																																																																																										   {
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			S='<td class="tdCobjN"';
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			if(m.val()!=""&&m.val()!="yyyy-mm-dd"){
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		var W=m.val().split("-");
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			if(Q==W[0]&&aa==W[1]-1){ae=W[2]}else{ae=1}}else{if(Q==d&&aa==L){ae=t}else{ae=1}}}else{}}var ad=X;while(ad>7){ad-=7}ad=T-ad+1;if(ad<0){ad+=7}N+='<table cellpadding="0" cellspacing="0" border="0" class="dateSel_t">';N+="<tr>";N+='<th align="center" style="color:#ff9900"><strong>\u65e5</strong></th>';N+='<th align="center">\u4e00</th>';N+='<th align="center">\u4e8c</th>';N+='<th align="center">\u4e09</th>';N+='<th align="center">\u56db</th>';N+='<th align="center">\u4e94</th>';N+='<th align="center" style="color:#ff9900"><strong>\u516d</strong></th>';N+="</tr>";
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			N+="<tr>";for(s=0;s<ad;s++){N+="<td></td>"}var R=1;while(R<=u[aa]){for(b=ad;b<7;b++){if(R<=u[aa]){var O=false;if(h.attr("id")==G.attr("id")){var Y=new Date(Z[0],Z[1]-1,Z[2]);
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																			
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		var ac=z(Y,F.leaveDate-1).split("-");Y=new Date(ac[0],ac[1]-1,ac[2]);
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		var V=new Date(Q,aa,R);
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		if(V>Y){O=true}}if(R<ae||O){N+="<td>"}else{if(ab&&P){if(h.attr("id")==m.attr("id")){if((Z[0]==Q.toString()&&Z[1]==(aa+1).toString()&&Z[2]==R.toString())||(U[0]==Q.toString()&&U[1]==(aa+1).toString()&&U[2]==R.toString())){N+=S}else{N+='<td class="tdCobj"'}}else{if(Z[0]==Q.toString()&&Z[1]==(aa+1).toString()&&Z[2]==R.toString()){N+=S}else{
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																														if(U[0]==Q.toString()&&U[1]==(aa+1).toString()&&U[2]==R.toString()){N+='<td class="tdCobj tdCobjN"'}else{N+='<td class="tdCobj"'}}}}else{if(ab||P){if(ab){if(Z[0]==Q.toString()&&Z[1]==(aa).toString()&&Z[2]==R.toString()){N+=S}else{N+='<td class="tdCobj"'}}else{if(P){if(U[0]==Q.toString()&&U[1]==(aa+1).toString()&&U[2]==R.toString()){N+=S}else{N+='<td class="tdCobj"'}}else{}}}else{N+='<td class="tdCobj"'}}N+=(' id="'+Q.toString()+"-"+(aa+1).toString()+"-"+R.toString()+'">')}N+=R.toString()}N+="</td>";R++}N+="</tr>";ad=0}N+="</table>";return N}K()}})(jQuery);
