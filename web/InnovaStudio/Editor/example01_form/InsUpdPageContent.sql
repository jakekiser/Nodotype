DROP PROCEDURE `spDAInsUpdPageContent`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdPageContent`(IN pName VARCHAR(255),IN pTitle VARCHAR(255),IN pPageHTML text)
BEGIN  

DECLARE CheckExists int; 
SET CheckExists = 0;  

start transaction;

select count(*) into CheckExists from DA_Pages p where p.Name=pName;
if (CheckExists>0) then
        update DA_Pages 
            set Title=pTitle,
            PageHTML=pPageHTML
        where Name=pName;
    else
        insert into DA_Pages (
            Title,
            PageHTML
        )
        values (
            pTitle,
            pPageHTML
        );
    end if;

END

