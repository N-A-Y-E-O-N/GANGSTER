<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주인없는 하늘아래</title>
<style>
   th,h2 {font-family: 'Hahmlet', serif;}}
   h1,nav{font-family:  'Gaegu' !important;}
   table {
    text-align:center;    margin: auto;
    border-collapse: collapse;
    font-family: 'Hahmlet', serif;
    font-size: 17px;
    width: 70%;

  }
  
  tr,td {border : 2px solid #b3b3b3b3;}
  option, select {font-size: 15px;}
   
</style>
</head>
<body>


<script type="text/javascript">
  <!-- 공구 하러 가기-->
  function buyingPop(){
    var buyingPop = window.open('M_withdog/w_buying.jsp', '공구하러가기', 'width=1200px,height=600px, scrollbars=yes');
  }
</script>

<div class="container">
  <div class="row">
    <div class="col">
    </div>
    <div class="col">
    </div>
    <div class="col">
<!-- 툴팁 -->
<div class="help-tip" style="margin-top: -30px; margin-right: -290px; z-index:1;">
   <p>
      반려동물 쇼핑 사이트들을 참고하여 만든 연령별 추천 사료 입니다. <br><br>
      사료는 공동구매가 가능하며 최소 수량이 정해져있습니다. <br>
      모든 사료를 한 번에 진행하지 않습니다.
      공동구매 기간 외에는 주문이 불가능하오니<br> 구매 기간 꼭 확인 부탁드립니다.<br><br>
      <img src="feed_img/help_pic.jpg" width="500" height="90" align="middle" ><br><br>
      ①공동구매 기간에 저희 '주인없는 하늘 아래에서'에서 주문서를 작성해주세요.<br>
      ②공구 최저 수량 도달 시에만 공동구매가 진행되며 진행 확정 시<br> 도매 업체에 주문서가 전달 됩니다.<br>
      ③도매업체에서 순차적으로 배송을 시작합니다.<br><br>
      -공동구매 특성상 배송기간이 지연될 수 있는 점 참고하시고 주문 부탁드립니다.<br>
      -원활한 공동구매 진행을 위해 구매 최저 수량이 정해져 있습니다.<br>
      -도매 업체에서 제시한 공구 최저 수량 도달 시에만 공동구매가 진행되며<br>
      -미도달 시 공동구매가 취소될 수 있는 점 양해 부탁드립니다.<br>
      -공동구매 진행 확정 후 배송과 관련된 문의는 일절 받지 않습니다.<br><br>
      배송은 업체에 직접 문의부탁드립니다. ( tel: 02)853-8453 )     
      
   </p>
</div>
       <button type="button" class="btn btn-outline-secondary" style="float: right;" onclick="buyingPop()"> 공구하러가기 </button>  &nbsp;
    </div>
  </div>
</div>
<br>

<!-- 전제 화면 그리드 -->
<div class="allcontainer" style="font-family: 'Hahmlet', serif; font-size: 18px;">   


<!-- 응애 그리드 -->
<div class="row"> 
<div class="col">
<h2>퍼피</h2>

<!-- 아코디언 전체 클래스  -->
<div class="accordion accordion-flush" id="accordionExample">

<!-- 엑스 스몰 퍼피 --> 
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
<!--  호출 버튼  -->    
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        로얄캐닌 <엑스 스몰 퍼피>
      </button>
    </h2>
    
    
    <div id="flush-collapseOne" class="accordion-collapse collapse show" aria-labelledby="flush-headingOne">
      <div class="accordion-body">

<img src="feed_img/1.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중 (9 ~ 12mm)<br>
급여연령 : 10개월 이하<br>
가격 : 10000원<br>
주의 원료 : 항산화제<br>
(질병 예방 원료)<br>  
뼈/관절질환 : 비타민A, 카르니틴<br>
피부질환 : 대두유,어유<br>
생식기질환 : 아연<br>
안질환 : 금잔화<br>
귀질환 : 아연
      
      </div>
    </div>
  </div>
  
 <!-- 미니 인도어 퍼피 -->  
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        로얄캐닌 <미니 인도어 퍼피>
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      <img src="feed_img/2.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중 (9 ~ 12mm)<br>
급여연령 : 10개월 이하<br>
가격 : 10000원<br>
주의 원료 : 항산화제<br>
(질병 예방 원료)<br>  
뼈/관절질환 : 카르니틴, 비타민A<br>
피부질환 : 어유, 대두유<br>
안질환 : 금잔화<br>
귀질환 : 비타민E, 아연
      </div>
    </div>
  </div>
  
 <!-- 미니 스타터 마더&베이비독 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        로얄캐닌 <미니스타터 마더&베이비독>
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/3.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소 (~ 8mm)<br>
급여연령 : 2개월 이하<br>
가격 : 10000원<br>
주의 원료 : 항산화제<br>
(질병 예방 원료)<br>  
뼈/관절질환 : 카르니틴, 비타민A<br>
피부질환 : 대두유, 어유<br>
안질환 : 금잔화<br>
귀질환 : 아연
      </div>
    </div>
  </div>


<!-- 헤리티지 퍼피 스몰 브리드 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
        아카나 <헤리티지 퍼피 스몰 브리드>
      </button>
    </h2>
    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/4.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소 (~ 8mm)<br>
급여연령 : 12개월 이하<br>
가격 : 10000원<br>
주의 원료 : x<br>
(질병 예방 원료)<br>  
뼈/관절질환 : 닭연골<br>
피부질환 : 청어, 라벤더, 로즈힙, 땅콩호박<br>
안질환 : 블루베리, 땅콩호박, 케일, 크랜베리<br>
귀질환 : 아연
      </div>
    </div>
  </div>  
  
<!-- 퍼피 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
        오리젠 <퍼피>
      </button>
    </h2>
    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/5.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중 (9 ~ 12mm)<br>
급여연령 : 15개월 이하<br>
가격 : 10000원<br>
주의 원료 : x<br>
(질병 예방 원료)<br>  
뼈/관절질환 : 닭연골, 닭뼈<br>
피부질환 : 청어, 라벤더, 로즈힙, 땅콩호박<br>
안질환 : 블루베리, 땅콩호박, 케일, 크랜베리<br>
귀질환 : 아연
      </div>
    </div>
  </div>  

<!-- 퍼피 라지 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
        오리젠 <퍼피 라지>
      </button>
    </h2>
    <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/6.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 대 (13mm ~)<br>
급여연령 : 18개월 이하<br>
가격 : 10000원<br>
주의 원료 : x<br>
(질병 예방 원료) <br> 
뼈/관절질환 : 닭연골<br>
피부질환 : 청어, 라벤더, 로즈힙, 땅콩호박<br>
안질환 : 블루베리, 땅콩호박, 케일, 크랜베리<br>
귀질환 : 아연
      </div>
    </div>
  </div>  

<!-- 피부모질(연어) -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
        닥터독 <피부모질(연어)>
      </button>
    </h2>
    <div id="flush-collapseSeven" class="accordion-collapse collapse" aria-labelledby="flush-headingSeven" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/7.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중 (9 ~ 12mm)<br>
급여연령 : 3개월 이상<br>
가격 : 10000원<br>
주의 원료 : x<br>
(질병 예방 원료)  <br>
뼈/관절질환 : 비타민A, 콜라겐, 제2인산칼슘, 탄산칼슘, 비타민B2<br>
피부질환 : 오메가, 비타민B3, 콜라겐, 비타민B2, 비타민B7, 비타민B6, 해바라기씨,어유, 아마씨<br>
안질환 : 블루베리, 비타민B2<br>
귀질환 : 비타민E, 아연
      </div>
    </div>
  </div>  

<!-- 펫프로 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
        도그라인 <펫프로>
      </button>
    </h2>
    <div id="flush-collapseEight" class="accordion-collapse collapse" aria-labelledby="flush-headingEight" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/8.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소 (~ 8mm)<br>
급여연령 : 12개월 이하<br>
가격 : 2000원<br>
주의 원료 : x<br>
(질병 예방 원료) <br> 
뼈/관절질환 : 벤토나이트, 비타민A<br>
귀질환 : 아연
      </div>
    </div>
  </div>  

<!-- 아지피아 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingNine">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
        도그라인 <아지피아>
      </button>
    </h2>
    <div id="flush-collapseNine" class="accordion-collapse collapse" aria-labelledby="flush-headingNine" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/9.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소 (~ 8mm)<br>
급여연령 : 12개월 이하<br>
가격 : 3000원<br>
주의 원료 : x<br>
(질병 예방 원료) <br> 
뼈/관절질환 : 비타민A, 벤토나이트<br>
귀질환 : 비타민E, 아연
      </div>
    </div>
  </div>  

<!-- 도그피아 -->   
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTen">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
        도그라인 <도그피아>
      </button>
    </h2>
    <div id="flush-collapseTen" class="accordion-collapse collapse" aria-labelledby="flush-headingTen" data-bs-parent="#accordionExample">
      <div class="accordion-body">
   <img src="feed_img/10.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중 (9 ~ 12mm)<br>
급여연령 : 12개월 이하<br>
가격 : 3000원<br>
주의 원료 : x<br>
(질병 예방 원료) <br> 
귀질환 : 비타민E, 아연
      </div>
    </div>
  </div>  


</div>
</div>
 
<!-- 잼민........................................................................................................................ --> 
 
 
    
<!-- 어덜트 -->
<div class="col">
<h2>어덜트</h2>

<div class="accordion accordion-flush" id="accordionFlush_2">

<!-- 미니 인도어 어덜트 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_one_1">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_one_1" aria-expanded="true" aria-controls="flush-collapse_one_1">
        로얄캐닌 <미니 인도어 어덜트>
      </button>
    </h2>
    <div id="flush-collapse_one_1" class="accordion-collapse collapse show" aria-labelledby="second_column_one_1" >
      <div class="accordion-body">
      <img src="feed_img/11.png" width="180" height="130" align="middle" ><br>
알갱이:  건식 중(9-12mm)<br>
급여연령 : 10개월 ~ 7살 미만<br>
가격 : 1kg 당 13,000원, 한달 대략 60,083원 <br>
주의원료 : 황산화제<br>
(질병 예방 원료) <br>
뼈/관절질환: 카르니틴, 비타민A<br>
피부질환: 대두유, 어유
     </div>
    </div>
  </div>
  
  
  <!-- 스몰 브리드독 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Two_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Two_1" aria-expanded="false" aria-controls="flush-collapse_Two_1">
        오리젠 <스몰 브리드독>
      </button>
    </h2>
    <div id="flush-collapse_Two_1" class="accordion-collapse collapse" aria-labelledby="second_column_Two_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/12.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 중(9~12mm)<br>
급여연령: 3개월 이상<br>
가격: 1kg당 17,000원, 한달 대략 76,173원<br>
주의원료: 없음<br>
(질병 예방 원료)<br>
- 뼈/관절질환: 홍합, 닭연골, 칠면조연골, 비타민B5<br>
- 안질환: 땅콩호박, 크랜베리, 블루베리, 케일<br>
- 피부질환: 청어, 땅콩호박, 라벤더, 로즈힙
     </div>
    </div>
  </div>
  
  <!-- 스몰 오리지날 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Three_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Three_1" aria-expanded="false" aria-controls="flush-collapse_Three_1">
        오리젠 <스몰 오리지날>
      </button>
    </h2>
    <div id="flush-collapse_Three_1" class="accordion-collapse collapse" aria-labelledby="second_column_Three_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/13.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 중(9~12mm)<br>
급여연령: 3개월 이상<br>
가격: 1kg당 17,000원, 한달 대략 76,173원<br>
주의원료: 없음<br>
(질병 예방 원료)<br>
- 뼈/관절질환: 홍합, 닭연골, 칠면조연골, 비타민B5<br>
- 안질환: 땅콩호박, 크랜베리, 블루베리, 케일<br>
- 피부질환: 청어, 땅콩호박, 라벤더, 로즈힙
     </div>
    </div>
  </div>
  
  <!-- 프레쉬 스몰 브리드 어덜트 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Four_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Four_1" aria-expanded="false" aria-controls="flush-collapse_Four_1">
        나우 <프레쉬 스몰 브리드 어덜트>
      </button>
    </h2>
    <div id="flush-collapse_Four_1" class="accordion-collapse collapse" aria-labelledby="second_column_Four_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/14.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 중 (9~12mm)<br>
급여연령: 1살 ~7살 미만<br>
가격: 1kg당 14,000원, 한달 대략 65,397원<br>
주의원료: 없음<br>
(질병 예방 원료)<br>
- 뼈/관절질환: 카르니틴, 요오드칼슘, 탄산칼슘, 비타민A, 비타민B5, 비타민B2, 제2인산칼슘<br>
- 피부질환: 아마씨, 비타민B3, 유채오일, 비타민B2, 코코넛오일, 비타민B6, 비타민B7<br>
- 안질환: 타우린, 블렉배리, 비타민B2, 블루베리, 크랜베리
     </div>
    </div>
  </div>
 
<!-- 피부 모질 건강사료 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Five_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Five_1" aria-expanded="false" aria-controls="flush-collapse_Five_1">
        더마독 <피부 모질 건강사료>
      </button>
    </h2>
    <div id="flush-collapse_Five_1" class="accordion-collapse collapse" aria-labelledby="second_column_Five_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/15.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 소(~8mm)<br>
급여연령: 3개월 이상<br>
가격: 1kg당 16,000원 한달 대략 63,258원<br> 
주의원료: 없음<br>
(질병예방원료)<br>
- 뼈/관절질환: 콜라겐<br>
- 피부질환: 오메가3, 콜라겐
     </div>
    </div>
  </div>  
 
 <!-- 관절 건강사료 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Six_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Six_1" aria-expanded="false" aria-controls="flush-collapse_Six_1">
        더마독 <관절 건강사료>
      </button>
    </h2>
    <div id="flush-collapse_Six_1" class="accordion-collapse collapse" aria-labelledby="second_column_Six_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/16.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 소(~8mm)<br>
급여연령: 3개월 이상<br>
가격: 1kg당 16,000원, 한달 대략 62,761원<br>
주의원료: 없음<br>
(질병예방원료)<br>
- 뼈/관절질환: 콘드로이친, 뮤코다당, 초록입홍합, 글루코사민
     </div>
    </div>
  </div>  
  
  
 <!-- 에코 플러스1 그레인프리 치킨&연어 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Seven_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Seven_1" aria-expanded="false" aria-controls="flush-collapse_Seven_1">
        네츄럴코어 <에코 플러스1 그레인프리 치킨&연어>
      </button>
    </h2>
    <div id="flush-collapse_Seven_1" class="accordion-collapse collapse" aria-labelledby="second_column_Seven_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/17.png" width="180" height="130" align="middle" ><br>
알갱이: 건식 소 (~8mm)<br>
급여연령: 2개월 이상<br>
가격: 1kg당 6,000원, 한달 대략 33,233원<br>
주의원료: 없음<br>
(질병예방원료)<br>
- 뼈/관절질환: 가수분해연어<br>
- 피부질환: 아마씨, 달맞이꽃, 어유<br>
- 안질환: 타우린
     </div>
    </div>
  </div>     
  
 <!-- 건강백서 건강한 관절 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_eight_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_eight_1" aria-expanded="false" aria-controls="flush-collapse_eight_1">
        뉴트리나 <건강백서 건강한 관절>
      </button>
    </h2>
    <div id="flush-collapse_eight_1" class="accordion-collapse collapse" aria-labelledby="second_column_eight_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/18.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중(9~12mm)<br>
급여연령 : 3개월 이상<br>
가격 : 7000원 (1kg 당)<br>
주의 원료 : X<br>
(질병 예방 원료) <br>
뼈/관절질환: 콘드로이친, 비타민 A, 비타민 B5, 비타민 B2, 비타민 D, 상어연골, 글루코사민<br>
피부질환: 비타민 B7, 비타민 B3, 비타민 B2, 비타민 B6<br>
귀질환: 비타민E, 비타민 B5, 아연 <br>
생식기질환: 비타민 E, 아연 <br>
안질환: 블루베리, 비타민 B2  
     </div>
    </div>
  </div>     
 
<!-- 금동사료 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_nine_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_nine_1" aria-expanded="false" aria-controls="flush-collapse_nine_1">
        라무달리 <금동사료>
      </button>
    </h2>
    <div id="flush-collapse_nine_1" class="accordion-collapse collapse" aria-labelledby="second_column_nine_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/19.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중(9~12mm)<br>
급여연령 : 3개월 이상<br>
가격 : 5000원 (1kg 당)<br>
주의 원료 : X<br>
(질병 예방 원료)<br>
뼈/관절질환: 칼슘, 석회석, 가수분해연어, 비타민 A<br>
생식기질환: 아연<br>
귀질환: 아연
     </div>
    </div>
  </div>      
 
<!-- 황태담은 한끼 황태와 소고기 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_ten_1">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_ten_1" aria-expanded="false" aria-controls="flush-collapse_ten_1">
        한끼뚝딱 <황태담은 한끼 황태와 소고기>
      </button>
    </h2>
    <div id="flush-collapse_ten_1" class="accordion-collapse collapse" aria-labelledby="second_column_ten_1" data-bs-parent="#accordionFlush_2">
      <div class="accordion-body">
      <img src="feed_img/20.png" width="180" height="130" align="middle" ><br>
알갱이 : 반습식<br>
급여연령 : 3개월 ~ 14살 미만<br>
가격 : 10000원 (1kg 당)<br>
주의 원료 : 글리세린<br>
(질병 예방 원료)<br>
피부질환: 오메가 3, GABA, 아마씨<br>
뼈/관절질환: 인산염<br>
안질환: 크랜베리
     </div>
    </div>
  </div>       
 
</div>
</div>

<!-- 틀................................................................................................................................. -->

    
<!-- 틀 -->
<div class="col">
<h2>시니어</h2>

<div class="accordion accordion-flush" id="accordionFlush_3">

  <!-- 시니어독 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_one_2">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_one_2" aria-expanded="true" aria-controls="flush-collapse_one_2">
        오리젠 <시니어독>
      </button>
    </h2>
    <div id="flush-collapse_one_2" class="accordion-collapse collapse show" aria-labelledby="second_column_one_2">
      <div class="accordion-body">
      <img src="feed_img/21.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중(9~12mm)<br>
급여연령 : 7살 이상<br>
가격 : 10000원 (1kg 당)<br>
주의 원료 : X<br>
(질병 예방 원료)<br>
안질환: 케일, 땅콩호박, 크랜베리, 블루베리<br>
피부질환: 청어, 땅콩호박, 라벤더, 로즈힙<br>
뼈/관절질환: 칠면조연골, 닭연골<br>
생식기질환: 아연<br>
귀질환: 아연
     </div>
    </div>
  </div>       
  
 <!-- 건강백서 건강한 6세+ -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Two_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Two_2" aria-expanded="false" aria-controls="flush-collapse_Two_2">
       뉴트리나 <건강백서 건강한 6세+>
      </button>
    </h2>
    <div id="flush-collapse_Two_2" class="accordion-collapse collapse" aria-labelledby="second_column_Two_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/22.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중(9~12mm)<br>
급여연령 : 7살 이상<br>
가격 : 8000원 (1kg 당)<br>
주의 원료 : X<br>
(질병 예방 원료)<br>
뼈/관절질환: 글루코사민, 비타민 A, 가수분해연어<br>
생식기질환: 비타민 E, 아연<br>
피부질환: 비타민 B7, 비타민 B3<br>
귀질환: 비타민 E, 아연<br>
안질환: 블루베리
     </div>
    </div>
  </div>       

<!-- 캔 14세 이상 쇠고기, 현미와 야채 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Three_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Three_2" aria-expanded="false" aria-controls="flush-collapse_Three_2">
       시저<캔 14세이상 쇠고기,현미와 야채>
      </button>
    </h2>
    <div id="flush-collapse_Three_2" class="accordion-collapse collapse" aria-labelledby="second_column_Three_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/23.png" width="180" height="130" align="middle" ><br>
알갱이 : 습식<br>
급여연령 : 14살 이상<br>
가격 : 10000원 (1kg 당)<br>
주의 원료 : X <br>
(질병 예방 원료)<br>
피부질환:　피망, 해바라기유, 어유<br>
생식기질환:　황산아연, 비타민 E<br>
안질환: 타우린, 금잔화<br>
뼈/관절질환: 제3인산칼슘<br>
귀질환: 비타민 E
     </div>
    </div>
  </div>       
  
<!-- 캔 11세 이상 닭고기 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Four_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Four_2" aria-expanded="false" aria-controls="flush-collapse_Four_2">
       시저<캔 캔 11세 이상 닭고기>
      </button>
    </h2>
    <div id="flush-collapse_Four_2" class="accordion-collapse collapse" aria-labelledby="second_column_Four_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/24.png" width="180" height="130" align="middle" ><br>
알갱이 : 습식<br>
급여연령 : 11살 이상<br>
가격 : 10000원 (1kg 당)<br>
주의 원료 : 이산화티타늄, 합성착향료<br>
(질병 예방 원료)<br>
생식기질환: 비타민 E, 황산아연<br>
뼈/관절질환: 제3인산칼슘<br>
안질환: 금잔화<br>
피부질환: 해바라기유<br>
귀질환: 비타민 E
     </div>
    </div>
  </div>         
  
<!-- 명작 하이포알러지 연어(노령견용) -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Five_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Five_2" aria-expanded="false" aria-controls="flush-collapse_Five_2">
       더독<명작 하이포알러지 연어(노령견용)>
      </button>
    </h2>
    <div id="flush-collapse_Five_2" class="accordion-collapse collapse" aria-labelledby="second_column_Five_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/25.png" width="180" height="130" align="middle" ><br>
알갱이 : 습식<br>
급여연령 : 11살 이상<br>
가격 : 10000원 (1kg 당)<br>
주의 원료 : 이산화티타늄, 합성착향료<br>
(질병 예방 원료)<br>
생식기질환: 비타민 E, 황산아연<br>
뼈/관절질환: 제3인산칼슘<br>
안질환: 금잔화<br>
피부질환: 해바라기유<br>
귀질환: 비타민 E
     </div>
    </div>
  </div>          


<!-- 닥터소프트 치킨 노령견용 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Six_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Six_2" aria-expanded="false" aria-controls="flush-collapse_Six_2">
       더독 <닥터소프트 치킨(노령견용)>
      </button>
    </h2>
    <div id="flush-collapse_Six_2" class="accordion-collapse collapse" aria-labelledby="second_column_Six_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/26.png" width="180" height="130" align="middle" ><br>
알갱이 : 반습식<br>
급여연령:7살 이상<br>
가격: 7000원<br>
주의 원료: 글리세린<br>
(질병 예방 원료)<br>
뼈/관절진환 : 콘드로이친, 비타민A, 탄샨칼슘, 글루코사민, 갑각류, 요오드칼슘, 상어연골, 비타민D, 비타민B2<br>
피부질환: 비타민B2, 비타민B6, 비타민B3<br>
안질환: 비타민B2
     </div>
    </div>
  </div>         

<!-- 닥터소프트 그레인프리 오리(노령견용) -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_Seven_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_Seven_2" aria-expanded="false" aria-controls="flush-collapse_Seven_2">
       더독<닥터소프트 그레인프리 오리 노령견>
      </button>
    </h2>
    <div id="flush-collapse_Seven_2" class="accordion-collapse collapse" aria-labelledby="second_column_Seven_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/27.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 중(9 ~12mm)<br>
급여연령:7살 이상<br>
가격: 10000원<br>
주의 원료: 글리세린, 색소<br>
(질병 예방 원료)<br>
뼈/관절진환 : 콘드로이친, 비타민A, 탄샨칼슘, 글루코사민, 가수분해연어, 비타민D, MSM<br>
피부질환: MSM<br>
안질환: x
     </div>
    </div>
  </div>         

<!-- 프레쉬 스몰 브리드 시니어 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_eight_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_eight_2" aria-expanded="false" aria-controls="flush-collapse_eight_2">
       나우 <프레쉬 스몰 브리드 시니어>
      </button>
    </h2>
    <div id="flush-collapse_eight_2" class="accordion-collapse collapse" aria-labelledby="second_column_eight_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/28.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소(~8mm)<br>
급여연령: 7살 이상<br>
가격: 10000원<br>
주의 원료:  x<br>
(질병 예방 원료)<br>
뼈/관절진환 : 카르니틴, 비타민B5, 아마씨, 비타민B2, 유채오일, 글루코사민, 초록입홍합<br> 
피부질환: 비타민B7, 비타민B6, 코코넛 오일<br>
안질환: 블랙베리, 크랜베리, 타우리느 블루베리, 비타민B2
     </div>
    </div>
  </div>         

<!-- 밥이보약 DOG 활기찬 노후 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_nine_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_nine_2" aria-expanded="false" aria-controls="flush-collapse_nine_2">
       하림 <밥이보약 DOG 활기찬 노후>
      </button>
    </h2>
    <div id="flush-collapse_nine_2" class="accordion-collapse collapse" aria-labelledby="second_column_nine_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/29.png" width="180" height="130" align="middle" ><br>
알갱이 : 건식 소(~8mm)<br>
급여연령: 8살 이상<br>
가격: 10000원<br>
주의 원료: X<br>
(질병 예방 원료)<br>
뼈/관절진환 :탄산칼슘, 글루코사민, 카르니틴, 제2인산칼슘<br> 
피부질환: 아마인, 레시틴, 유채오일, 어유<br>
안질환: 타우리느 아사이베리, 블루베리
     </div>
    </div>
  </div>         

<!-- 알포 리틀프랜즈 6세이상 노령견용 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="second_column_ten_2">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse_ten_2" aria-expanded="false" aria-controls="flush-collapse_ten_2">
       퓨리나 	<알포 리틀프랜즈 6세이상(노령견용)>
      </button>
    </h2>
    <div id="flush-collapse_ten_2" class="accordion-collapse collapse" aria-labelledby="second_column_ten_2" data-bs-parent="#accordionFlush_3">
      <div class="accordion-body">
      <img src="feed_img/30.png" width="180" height="130" align="middle" ><br>
알갱이 :건식 중(~9mm)<br> 
급여연령:7살 이상<br> 
가격: 3000원<br> 
주의 원료: X<br> 
(질병 예방 원료)<br> 
뼈/관절진환 : 식물성지바으 비타민B2, 비타민B7, 비타민B3, 비타민B6 <br> 
피부질환: 칼슘, 비타민D, 비타민B2, 비타민A<br> 
안질환: 비타민B2
     </div>
    </div>
  </div>         


</div>
</div>

</div></div>
</body>
</html>