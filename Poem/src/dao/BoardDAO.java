package dao;

import java.util.ArrayList;


import dto.Board;


public class BoardDAO {
	private ArrayList<Board> listOfBoards = new ArrayList<Board>();
	private static BoardDAO instance = new BoardDAO();
	

	public static BoardDAO getInstance(){
		return instance;
	}
	
	public ArrayList<Board> getAllBoards() {
		return listOfBoards;
	}
	public Board getBoardBynum(String bnum) {
		Board boardBynum = null;
		
		for (int i = 0; i < listOfBoards.size(); i++) {
			Board board = listOfBoards.get(i);
			if (board != null && board.getbnum() != null && board.getbnum().equals(bnum)) {
				boardBynum = board;
				break;
			}
		}
		return boardBynum;
	}
}
