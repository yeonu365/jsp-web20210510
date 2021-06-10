SELECT * FROM Comment;
SELECT * FROM Board;
SELECT count(id) FROM Board;  -- 10개
SELECT count(id) FROM Comment;  -- 6개

-- 댓글 없는 게시물은 나오지 않는 결과 예상 (0개 있는 건 검색이 안됨.) INNER JOIN 됨.
SELECT * FROM Board b JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;
-- board 에서 댓글이 없어도 게시물이 나와야 한다. LEFT JOIN
SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;
-- 댓글의 갯수를 원함.
SELECT b.*, count(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id ORDER BY b.id DESC;

SELECT b.id boardId, b.title title, m.name name, b.inserted 
				FROM Board b JOIN Member m ON b.MemberId = m.id
				ORDER BY boardId DESC;
SELECT b.id boardId, b.title title, m.name name, COUNT(c.id) numberOfComment, b.inserted 
				FROM Board b JOIN Member m ON b.MemberId = m.id
                LEFT JOIN Comment c ON b.id = c.boardId GROUP BY b.id
				ORDER BY boardId DESC;
                
SELECT m.*, b.* FROM Member m JOIN Board b ON m.id = b.memberId 
WHERE m.id= '봄';

SELECT m.*, count(b.id) 
FROM Member m JOIN Board b ON m.id = b.memberId 
WHERE m.id= '봄';
SELECT m.*, count(c.id) 
FROM Member m JOIN Comment c ON m.id = c.memberId 
WHERE m.id= '봄';

SELECT m.*, count(b.id), count(c.id)
FROM Member m LEFT JOIN Board b ON m.id = b.memberId 
LEFT JOIN Comment c ON m.id = c.memberId
WHERE m.id= '봄';

SELECT * FROM Board WHERE id = '봄';