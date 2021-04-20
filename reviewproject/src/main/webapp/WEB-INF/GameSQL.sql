create table temp(
	id		number primary key,
	name	varchar2(30)
);

insert into temp values(1, '승민');
insert into temp values(2, '승민');
insert into temp values(3, '승민');

create table game_info(
	id		number primary key,
	title	varchar2(30),
	img varchar2(500),
	gameLink varchar2(500),
	releaseDate Date,
	multiple varchar2(500),
	recom number,
	norecom number,
	content Long,
	youtube varchar2(500)
);

insert into GAME_INFO values(1, '배틀그라운드', '/resources/images/pubg.jpg', 'https://naver.com', '2021-04-20', '대규모 멀티플레이어', 0, 0,'총으로 키보드를 만드는 게임.', 'https://youtu.be')

select * from TEMP;

delete from game_info;