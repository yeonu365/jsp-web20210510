SELECT *FROM Member;
SELECT * FROM Board;
SELECT b.id boardId, b.title title, b.body body, 
				m.Name memberName, m.id memberID, b.inserted
				FROM Board b JOIN Member m ON b.memberId = m.id 
				WHERE b.id=2;
                
DELETE FROM Board WHERE id = 1;
