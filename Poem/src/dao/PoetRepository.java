package dao;
import java.util.ArrayList;
import dto.Poet;

public class PoetRepository {
	private ArrayList<Poet> listOfPoets = new ArrayList<Poet>();
	private static PoetRepository instance = new PoetRepository();

	public static PoetRepository getInstance(){
		return instance;
	} 

	public PoetRepository() {
		Poet n1 = new Poet("1", "김춘수", "1922-11-25", "2004-11-29", "1941년 일본 유학<br>1942년 일제 및 조선총독부 비판<br>1943년 퇴학<br>1948년 첫 시집 <구름과 장미> 출간<br>1958년 한국시인협회상 수상<br>1959년 아시아 자유문학상 수상");
		Poet n2 = new Poet("2", "신동엽", "1930-8-18", "1969-4-7", "1959년 조선일보 신춘문예 당선<br>1960년 <학생혁명시집>을 집필하며 4‧19 혁명 참가<br>1969년 4월 7일 간암으로 사망");
		Poet n3 = new Poet("3", "윤동주", "1917-12-30", "1945-2-16", "서울 연희전문학교 2학년 재학중 등단<br>1942년 교토 도시샤대학 입학<br>1943년 항일운동 혐의로 투옥 후 옥중 요절<br>사후 시집 <하늘과 바람과 별과 시> 출간");
		Poet n4 = new Poet("4", "이육사", "1904-5-18", "1944-1-16", "1927년 조선은행 대구지점 폭파 사건에 연루&#44;수인번호 264로 투옥<br>1930년 조선일보에 <말> 발표로 등단<br>언론인으로 일하며 항일운동과 작품 발표 병행<br>1943년 귀국후 체포<br>1944년 베이징 주재 일본 총영사관 감옥에서 사망");
		Poet n5 = new Poet("5", "조지훈", "1920-12-3", "1968-5-17", "1939년  &#39;문장&#39;지의 추천으로 <고풍의상>으로 등단<br>1946년 시집 <청록집>을 간행<br>민족 주체 의식 확립의 중요성 주장<br>이승만 정부와 박정희 정부에 비판적<br>세속적인 이해와 타협을 거부함");
		Poet n6 = new Poet("6", "정지용", "1902-6-20", "1950-9-25", "휘문고등학교와 도시샤대학 졸업<br>1926년 <카페·프린스>를 발표하며 등단<br>일제의 탄압으로 모더니즘(특히 이미지즘) 시 집필<br>청록파에 큰 영향<br>6·25 전쟁 발발 후 서울특별시에서 피난하지 못함<br>조선대백과사전(북한)에 사망일자 9월 25일 기록됨");
		Poet n7 = new Poet("7", "박두진", "1916-3-10", "1998-9-16", "1939년 문예지  &#39;문장&#39;에 <향현> 등을 발표하며 등단, 청록파로 불림<br>자연을 주제로 한 시를 쓰다 광복의 감격과 생명감있는 시로 바뀜<br>아세아자유문학상&#44; 서울시 문화상&#44; 삼일 문화상&#44; 예술원상 등 수상");
		Poet n8 = new Poet("8", "박목월", "1916-1-6", "1978-3-24", "1940년 &#39;문장&#39; 9월호에 등단<br>1946년 6월 청록집 발간<br>6·25 전쟁 발발 후 한국문학가협회 별동대 조직<br>문관으로써 군복무<br>1959년 4월 한양대학교 조교수가 되어 은퇴할 때까지 후진양성");
		Poet n9 = new Poet("9", "김수영", "1921-11-27", "1968-6-16", "일제강점기 말 학병징집을 피해 대학 중퇴 후 만주로 이주했다가 광복과 함께 귀국하여 시 창작 시작<br>6·25 전쟁당시 조선인민군에 징집되었다 반공포로로 석방<br>일본어와 영어에 능통하여 잡지사&#44; 신문사를 전전하며 통역·번역을 하며 시 창작<br>1968년 술자리 후 귀갓길에서 인도로 뛰어든 좌석버스에 치여 48세 사망");
		Poet n10 = new Poet("10", "한용운", "1879-8-29", "1944-6-29", "1910년 한일불교동맹을 반대하며 독립운동 활동 시작<br>3·1 만세운동 민족대표 33인으로 참가<br>1926년 <님의 침묵>등의 시를 발표하고 1930년대에 <흑풍>&#44; <후회>&#44; <박명>&#44; <죽음> 등 장편&#44; 단편 소설을 발표<br>불교 혁신과 작품활동을 계속하다 1944년 중풍으로 열반");

		listOfPoets.add(n1);
		listOfPoets.add(n2);
		listOfPoets.add(n3);
		listOfPoets.add(n4);
		listOfPoets.add(n5);
		listOfPoets.add(n6);
		listOfPoets.add(n7);
		listOfPoets.add(n8);
		listOfPoets.add(n9);
		listOfPoets.add(n10);
				
	}

	public ArrayList<Poet> getAllPoets() {
		return listOfPoets;
	}
	
	public Poet getPoetByID(String poetid) {
		Poet poetByID = null;

		for (int i = 0; i < listOfPoets.size(); i++) {
			Poet poet = listOfPoets.get(i);
			if (poet != null && poet.getPid() != null && poet.getPid().equals(poetid)) {
				poetByID = poet;
				break;
			}
		}
		return poetByID;
	}
}
