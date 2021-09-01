create table temp(
	id		number primary key,
	name	varchar2(30)
);

insert into temp values(1, '승민');
insert into temp values(2, '승민');
insert into temp values(3, '승민');

create table game_info(
	id		number primary key,
	category varchar2(30),
	title	varchar2(30),
	img varchar2(500),
	gameLink varchar2(500),
	releaseDate Date,
	multiple varchar2(500),
	recom number,
	norecom number,
	content Long
);

insert into GAME_INFO values(1,'fps', '배틀그라운드', '/resources/images/pubg.jpg', 'https://naver.com', '2021-04-20', '대규모 멀티플레이어', 0, 0,
'배틀로얄 장르에 있어 가장 큰 영향을 끼친 게임. <br>
그래픽은 처음에는 최적화도 되어있지 않았고 투박했지만 지금은 크게 달라져 꽤나 깔끔해진 모습을 볼 수 있다.
음향적인 부분도 한창 유명하던 당시에는 배그를 하다가 타 fps게임으로 넘어가게 되면 뭔가 아쉬울 정도였다. (물론 지금은 전체적으로 수준이 매우 높아져 그런 느낌은 없음.) <br>
기존에 있던 배틀로얄 방식과 하나도 다르지 않다. 시작할 장소를 정해 아이템을 줍고 상대와 싸워 최후의 생존자가 되는 것. 근본적인 배틀로얄 게임이라고 생각한다. <br>
진입장벽은 의외로 낮은 편. (나이제한은 스팀은 만 18세 카카오는 만 15세) 고인물도 저격총에 머리 한대면 죽어야 하고 특수한 무빙이라고 할 것도 없어졌다. 과금은 인게임에 아무 영향도 주지 않아 필수가 아니며 운영도 필자가 플레이 할 때 까지는 나쁘지 않게 열심히 했음. <br>
결론은 한번쯤 사서 해보면 절대 손해보지 않을 게임이다. 같이 할 친구가 있으면 더 재밌고 없어도 모르는 사람과 같이 하는 재미가 있는 게임. 앞으로 어떤 방향으로 게임이 발전할지 궁금하다.');

insert into GAME_INFO values(2,'fps', '데스티니 가디언즈', '/resources/images/destiny.jpg', 'https://www.bungie.net/ko', '2017-08-28', '대규모 멀티플레이어', 0, 0,
'fps를 기반에 둔 루트슈터 게임으로 게임 자체의 완성도는 굉장히 높은 편이다. <br>
하지만, 반복된 컨텐츠와 과거 전작의 컨텐츠를 재탕하는 등 좋지 못한 컨텐츠 생산방식으로 인해 재미를 느낄 수 있는 요소가 부족하다. <br>
무료 게임이라고 포장을 해서 유입을 유도하고 있으나, 정작 플레이를 하려고 하면 무료가 아님을 알 수 있다. <br>
대부분의 컨텐츠는 확장팩을 구매하지 않으면 플레이 할 수 없었으며(시간이 지나면 바뀔 수 있음) 확장팩을 구매하지 않으면 특정 직업(속성)을 사용할 수 없다. <br>
pvp 컨텐츠에서는 에임(조준점)에 보정이 크게 들어가 있어 총을 잘 쏘지 못하더라도 의외로 즐길 수 있는 편. <br>
무료로도 간단히 즐길 수 있는 컨텐츠가 있으니 입맛에 맞다면 확장팩을 구매해 즐기는 것도 좋다. 인터넷 친구를 만들기에 최적.');

insert into GAME_INFO values(3,'fps', '레인보우 식스 시즈', '/resources/images/rainbow.jpg', 'https://store.steampowered.com/app/359550/Tom_Clancys_Rainbow_Six_Siege', '2015-11-26', '5인 멀티플레이어', 0, 0,
'조금은 무거운 느낌의 fps 게임이다. 수비팀과 공격팀 5 vs 5로 진행되는 팀 데스매치 형식이다. <br>
평범한 fps를 생각하고 플레이한다면 조용히 다녀야 하는 게임 특성 탓에 조금 답답할 수 있다. 하지만 적응을 좀 하면 처음했을 때 기어다니던 것 보다는 훨씬 유동적인 플레이가 가능해진다. <br>
여기저기서 흔하게 고인물(고수)게임 이라고 불리는 만큼 새로 유입된 유저와 기존 유저의 실력과 숙련도 차이는 하늘과 땅 차이로 정말 크게 벌어져 있다. <br>
총알이 몇몇 구조물을 관통하는 특성 탓에 고인물들은 어느정도 대처가 가능하지만, 뉴비(초보)의 경우 당황하다가 죽는게 다반사다. <br>
인게임에서 팀간의 소통이 꽤나 폐쇄적인 시스템으로 이루어져 있어 보이스를 통한 브리핑이 있어야 게임이 원활하게 진행된다. <br>
하지만 중국어가 많이 들릴 수 있어 역시 친구들과 플레이하는게 최고다. <br>
친구들과 함께하면 재밌지만 혼자 하면...');

insert into GAME_INFO values(4,'fps', '건파이어 리본', '/resources/images/gunfire.jpg', 'https://store.steampowered.com/app/1217060/Gunfire_Reborn', '2020-05-22', '4인 멀티플레이어', 0, 0,
'귀여운 동물 캐릭터들로 플레이하는 fps 게임이다. 스테이지별로 몬스터를 처지하며 다음 스테이지로 넘어가 보스를 처지하는 형식으로 진행이 된다. <br>
여러가지 총기를 사용할 수 있으며 각 총이 사용하는 총알은 3가지로 분류되는데, 각 총알마다 특징이 있어 원하는 조합을 맞출 수도 있다. <br>
총기마다 각양각색의 특성과 효과가 있어 이런저런 총을 사용해보는 재미가 있다. <br>
의외로 꽤나 스피드한 느낌이 있어 답답한 느낌을 받지는 않은 것 같다. 또한, 친구들과 함께 플레이 할 수 있다. <br>
각종 보스의 패턴이 꽤나 뚜렷해 자연스럽게 익히기도 좋은 편으로 난이도도 엄청나게 높지는 않다.');


insert into GAME_INFO values(5,'fps', '에이펙스 레전드', '/resources/images/apex.jpg', 'https://store.steampowered.com/app/1172470/Apex', '2020-05-22', '3인 멀티플레이어', 0, 0,
'오버워치와 비슷한 하이퍼 FPS 장르로 굉장히 스피드하며 좋은 타격감을 자랑한다. 타 fps 게임과는 달리 근접전도 꽤나 재밌게 만들어져 있다. <br>
고인물 무빙이라고 불리는 빠르게 움직이는 방법이 있으나 배우기에 크게 어렵지는 않다. <br>
오버워치같은 상대의 움직임이 빠르거나 여기저기서 공격이 날아오는 게임을 했다면 적응하는데에 있어 크게 어렵지 않을 것으로 보인다. <br>
수많은 브리핑이 오가는 바쁜 게임이다 보니 합이 잘 맞는 친구와 함께하면 재미가 배가 된다.');

insert into GAME_INFO values(6,'rpg', '로스트아크', '/resources/images/lostark.jpg', 'https://lostark.game.onstove.com/Main', '2018-12-04', '대규모 멀티플레이어', 0, 0,
'한국에서는 유명하지 않은 느낌의 RPG이며 묵직한 레이드를 가볍게 풀어내기 위해 노력한게 느껴진다.
하지만 전체적으로 완성도가 높은 편은 아니며 패치도 꽤나 늦는 편. <br>
꽤나 긴 암흑기를 가지고 있다가 디렉터의 커뮤니티 여론 파악 후 사과와 함께 발표하는 태도로 엄청난 호감을 사 커다란 유명세를 끌었으나 패치같은 실질적으로 중요한 부분은 나아지지 않은 것 같다. <br>
일일 숙제가 많아 지루한 부분이 있는건 확실하지만 성장을 한 뒤 즐기는 컨텐츠는 그 번거로움을 모두 대체할 수.. 있나. 아무튼 재밌다.<br>
과금이 필요가 없는 게임이라고 홍보를 하지만 어지간하면 동의할 수 없는 말이다. 정~말 느리게 갈 생각이라면 무과금으로. <br>
사실 ');

insert into GAME_INFO values(7,'rpg', '파이널 판타지 XIV', '/resources/images/ffx.jpg', 'https://www.ff14.co.kr/main', '2021-04-20', '대규모 멀티플레이어', 0, 0,
'와우같은 옛날 RPG 느낌을 느낄 수 있으면서 옛날 RPG보다는 조금 더 나아진 그래픽? 모델링? 으로 게임을 즐길 수 있다는 장점이 있다. <br>
직업군이 되게 여러개로 나뉘어져 있어 자신의 취향에 맞는 직업을 골라서 플레이 할 수 있다. <br>
또한 여러개의 캐릭터를 키울 필요 없이 직업을 변경하여 플레이 할 수 있기에 피로를 줄일 수 있는건 덤. <br>
상위 레이드를 플레이해보지는 않았지만 들어본 정보로는 굳이 상위 레이드를 플레이하지 않아도 높은 등급의 장비를 얻을 수 있다고 한다. <br>
상위 레이드의 보상은 주로 빛이 나거나 멋있는 장비. 주로 외형을 위한 보상이라고 한다.');

insert into GAME_INFO values(8,'rpg', '알비온 온라인', '/resources/images/albion.jpg', 'https://albiononline.com/ko/home', '2021-04-20', '대규모 멀티플레이어', 0, 0,
'자유도가 높다 라는 컨셉으로 광고를 열심히 하여 많은 유저를 끌어모았다. <br>
허나 여럿이서 플레이 할 컨텐츠가 없어 대규모 멀티플레이어라고 부르기는 하나 실상은 초반에는 거의 1인으로 성장하는 경우가 많다. <br>
초반에는 PVE 컨텐츠 위주로 플레이하나 시간이 지날수록 PVP를 하지 않으면 성장할 수 없다는 현실을 마주하게 된다. <br>
그런 상황에 놓여 PVP를 플레이하게 되면 죽어서 다 빼앗기거나 죽여서 모두 가져가는 일확천금의 게임으로 변한다. <br>
인터넷 친구를 만들기에 최적화된 게임.');


파판, 알비온


insert into GAME_INFO values(3, 'rpg', '배틀그라운드', '/resources/images/pubg.jpg', 'https://naver.com', '2021-04-20', '대규모 멀티플레이어', 0, 0,'총으로 키보드를 만드는 게임.');

select * from game_info;

select * from TEMP;

delete from game_info;

drop table game_info;

update game_info set recom = recom + 1 where id = 1

drop table user_reco;

CREATE TABLE user_reco(
	id number,
	ip varchar2(50),
	type varchar2(10)
);
