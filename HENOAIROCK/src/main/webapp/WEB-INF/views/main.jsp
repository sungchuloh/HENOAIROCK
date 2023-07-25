<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css"><script src="script.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>Insert title here</title>
</head>
<body>
    <header>
        <div class="logo">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdi5fsLXHHom5-G17tUu9Z2Gf3cG88EJRZlA&usqp=CAU" alt="음악 사이트 로고">
        </div>
        <nav>
            <ul>
                <li><a href="#">홈</a></li>
                <li><a href="#">음악</a></li>
                <li><a href="#">아티스트</a></li>
                <li><a href="#">플레이리스트</a></li>
                <li><a href="#">커뮤니티</a></li>
            </ul>
        </nav>
        <div class="search">
            <input type="text" placeholder="검색">
            <button type="submit">검색</button>
        </div>
  <div class="login">
    <button class="login-btn">로그인</button>
  </div>
<div class="viewbox">
    <button class="viewbox-btn">메뉴</button>
    <div class="viewbox-content">
                <span class="viewbox-close-btn">&#10060;</span>
        <ul>
            <li><a href="#">홈</a></li>
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">고객센터</a></li>
            <li><a href="#">설정</a></li>
            <li><a href="#">쿠폰등록</a></li>
            <li><a href="#">이용권 구매</a></li>
        </ul>
    </div>
</div>
</header>

    <section id="banner">
        <div class="banner-image">
            <img src="https://cdn.bhdw.net/im/dj-marshmello-art-wallpaper-80911_w297.webp" alt="배너 이미지">
        </div>
        <div class="banner-text">
            <h1>감정기반 AI로</h1>
            <p>새롭고 다양한 장르의 음악과 아티스트를 만나보세요.</p>
            <a href="#" class="btn">지금 시작하기</a>
        </div>
    </section>

    <section id="features">
        <h2>장르 스테이션</h2>
        <div class="categories">
            <div class="category">
                <img src="https://i1.sndcdn.com/artworks-000492442158-1um5nc-t500x500.jpg" alt="장르 1 이미지">
                <h3>pop</h3>
            </div>
            <div class="category">
                <img src="https://blog.kakaocdn.net/dn/C0srr/btr5ept2YV9/G82gRoQABlg0KmOA3oyNk0/img.jpg" alt="장르 2 이미지">
                <h3>힙합</h3>
            </div>
            <!-- 다른 장르 카테고리 -->
            <div class="category">
                <img src="https://cdnimg.melon.co.kr/cm2/album/images/103/72/085/10372085_20200106153324_500.jpg?ebc0e64b101670deec3305feb51fd22d" alt="장르 2 이미지">
                <h3>발라드</h3>
            </div>
        </div>
    </section>

    <section id="emotions">
        <h2>감정 스테이션</h2>
        <div class="emotions-tabs">
            <button class="emotion-tab active" data-emotion="신나요" >신나요</button>
            <button class="emotion-tab" data-emotion="편안해요">&#128546편안해요</button>
            <button class="emotion-tab" data-emotion="행복해요">행복해요</button>
            <button class="emotion-tab" data-emotion="불안해요">불안해요</button>
            <button class="emotion-tab" data-emotion="졸려요">졸려요</button>
            <button class="emotion-tab" data-emotion="설레요">설레요</button>
            <button class="emotion-tab" data-emotion="그리워요">그리워요</button>
            <button class="emotion-tab" data-emotion="슬퍼요">슬퍼요</button>
            <button class="emotion-tab" data-emotion="싱숭생숭">싱숭생숭</button>
            <button class="emotion-tab" data-emotion="화나요">화나요</button>
        </div>
    </section>

    <section id="recommended">
        <h2 class="selected-emotion"></h2>
        <div class="recommended-content">
            <!-- 선택된 감정에 따른 추천 음악 -->
        </div>
    </section>

<section id="music-player">
  <h2>재생 목록</h2>
  <div class="player-controls">
    <button class="previous-btn">&#8249;</button>
    <button class="play-btn">&#9658;</button>
    <button class="s-btn">&#10074;&#10074;</button>
    <button class="next-btn">&#8250;</button>
  </div>
  <div class="current-song">
    <img src="https://image.yes24.com/goods/96990927/XL" alt="현재 곡 이미지">
    <div class="song-info">
      <h3>현재 곡</h3>
      <p>아티스트</p>
    </div>
  </div>
  <div class="volume-control">
    <div class="volume-slider">
      <label for="volume-slider">음량 조절:</label>
      <input type="range" id="volume-slider" min="0" max="100" step="1">
    </div>
  </div>
</section>

<div class="wrapper">
  <div class="divider div-transparent"></div>
  </div>
  
    <footer>
        <div class="footer-links">
            <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">위치정보 이용약관</a></li>
                <li><a href="#">청소년보호정책</a></li>
                <li><a href="#">개인 정보 처리 방침</a></li>
            </ul>
        </div>
        <div class="social-media-links">
            <a href="#" class="social-link">상호명 : (주)싸그리싺싺 | 대표 : 구자민 | 개인정보보호책임자 : 구자민 | 사업자등록번호 490-81-01351</a></br>
            <a href="#" class="social-link">통신판매신고업번호 : 2022-광주동구-0338 사업자정보 확인 > | 호스팅서비스사업자 : AWS</a></br>
            <a href="#" class="social-link">주소 : 서울 마포구 서교동 122 4F / 서울 강남구 역삼동 823 삼원타워 5F | 제휴 문의 : benjamin9jamin@gmail.com</a>
        </div>
        <p>&copy; HeNo_Ai_RoCk. All rights reserved.</p>
    </footer>
    <script>
    const viewboxBtn = document.querySelector('.viewbox-btn');
    const viewboxContent = document.querySelector('.viewbox-content');
    const viewboxCloseBtn = document.querySelector('.viewbox-close-btn');

    viewboxBtn.addEventListener('click', ()) => {
        viewboxContent.classList.add('active');
    });

    viewboxCloseBtn.addEventListener('click', () => {
        viewboxContent.classList.remove('active');
    });

    window.addEventListener('scroll', () => {
        const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
        viewboxContent.style.top = `${scrollTop + 20}px`;
    });
    
 // JavaScript 코드

 // 감정 스테이션 탭 요소들을 선택합니다.
 const emotionTabs = document.querySelectorAll('.emotion-tab');

 // 추천 음악을 표시하는 요소를 선택합니다.
 const recommendedContent = document.querySelector('.recommended-content');

 // 감정 스테이션 탭 클릭 이벤트 핸들러를 추가합니다.
 emotionTabs.forEach((tab) => {
     tab.addEventListener('click', () => {
         // 모든 감정 스테이션 탭에서 'active' 클래스를 제거합니다.
         emotionTabs.forEach((tab) => tab.classList.remove('active'));

         // 클릭한 탭에 'active' 클래스를 추가합니다.
         tab.classList.add('active');

         // 선택된 감정을 가져옵니다.
         const selectedEmotion = tab.getAttribute('data-emotion');

         // 선택된 감정에 따라 추천 음악을 업데이트합니다.
         updateRecommendedContent(selectedEmotion);
     });
 });

 // 추천 음악을 업데이트하는 함수
 function updateRecommendedContent(emotion) {
     // 선택된 감정에 맞는 음악을 가져와서 추천 음악 영역에 표시합니다.
     const songs = getRecommendedSongsByEmotion(emotion); // 선택된 감정에 맞는 음악 데이터를 가져오는 함수 (사용자 정의)

     // 추천 음악을 초기화합니다.
     recommendedContent.innerHTML = '';

     // 추천 음악을 하나씩 생성하여 표시합니다.
     songs.forEach((song) => {
         const songElement = createSongElement(song); // 음악 요소를 생성하는 함수 (사용자 정의)
         recommendedContent.appendChild(songElement);
     });
 }

 // 선택된 감정에 따라 추천 음악 데이터를 가져오는 함수 (예시)
 function getRecommendedSongsByEmotion(emotion) {
     // 여기에서 해당 감정에 맞는 음악 데이터를 가져와 반환합니다.
     // 예를 들어, API 요청 또는 미리 정의된 데이터를 사용할 수 있습니다.
     // 반환되는 데이터는 선택된 감정에 따라 다를 수 있습니다.
     // 이 예시에서는 미리 정의된 데이터를 사용하도록 가정합니다.
     switch (emotion) {
         case '신나요':
             return [
                 { title: '신나는 노래 1', artist: '아티스트 1', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '신나는 노래 2', artist: '아티스트 2', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '신나는 노래 2', artist: '아티스트 2', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 신나는 노래 데이터
             ];
         case '편안해요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '행복해요':
             return [
                 { title: '행복한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '행복한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '불안해요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '졸려요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '설레요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '그리워요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '슬퍼요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '싱숭생숭':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         case '화나요':
             return [
                 { title: '편안한 노래 1', artist: '아티스트 3', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 { title: '편안한 노래 2', artist: '아티스트 4', image: 'https://img2.sbs.co.kr/img/sbs_cms/WE/2022/10/24/dxi1666572900771.jpg' },
                 // 추가적인 편안한 노래 데이터
             ];
         default:
             return [];
     }
 }

 // 음악 요소를 생성하는 함수 (예시)
 function createSongElement(song) {
     const songElement = document.createElement('div');
     songElement.classList.add('song');

     const imageElement = document.createElement('img');
     imageElement.src = song.image;
     imageElement.alt = `${song.title} 이미지`;
     songElement.appendChild(imageElement);

     const titleElement = document.createElement('h3');
     titleElement.textContent = song.title;
     songElement.appendChild(titleElement);

     const artistElement = document.createElement('p');
     artistElement.textContent = song.artist;
     songElement.appendChild(artistElement);

     return songElement;
 }

 // 초기 로드 시 '신나요' 감정에 따른 추천 음악을 표시합니다.
 updateRecommendedContent('신나요');
    </script>
</body>
</html>