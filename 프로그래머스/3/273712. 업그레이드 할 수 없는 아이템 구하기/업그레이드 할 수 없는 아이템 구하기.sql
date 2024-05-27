SELECT  A.ITEM_ID
        ,B.ITEM_NAME
        ,B.RARITY
FROM  ITEM_TREE AS A JOIN  ITEM_INFO AS B ON  A.ITEM_ID = B.ITEM_ID
WHERE  NOT EXISTS(SELECT B.ITEM_ID FROM ITEM_TREE WHERE PARENT_ITEM_ID = A.ITEM_ID)
ORDER BY A.ITEM_ID DESC 
