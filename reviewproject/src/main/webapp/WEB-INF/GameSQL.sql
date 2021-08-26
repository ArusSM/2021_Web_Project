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



insert into GAME_INFO values(3,'rpg', '로스트아크', '/resources/images/lostark.jpg', '수정 필요', '수정 필요', '대규모 멀티플레이어', 0, 0,
'한국에서는 유명하지 않은 느낌의 RPG이며 묵직한 레이드를 가볍게 풀어내기 위해 노력한게 느껴진다.
하지만 전체적으로 완성도가 높은 편은 아니며 패치도 꽤나 늦는 편. <br>
꽤나 긴 암흑기를 가지고 있다가 디렉터의 커뮤니티 여론 파악 후 사과와 함께 발표하는 태도로 엄청난 호감을 사 커다란 유명세를 끌었으나 패치같은 실질적으로 중요한 부분은 나아지지 않은 것 같다. <br>
일일 숙제가 많아 지루한 부분이 있는건 확실하지만 성장을 한 뒤 즐기는 컨텐츠는 그 번거로움을 모두 대체할 수 있을 정도의 플레이타임을 자랑한다.<br>
과금이 필요가 없는 게임이라고 홍보를 하지만 어지간하면 동의할 수 없는 말이다.');



insert into GAME_INFO values(3, '배틀그라운드', '/resources/images/pubg.jpg', 'https://naver.com', '2021-04-20', '대규모 멀티플레이어', 0, 0,'총으로 키보드를 만드는 게임.');

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
