TITLE SMALL TOOL v1.0 --- MaDnh
ECHO OFF
COLOR A
:START
TITLE SMALL TOOL v1.0 --- MaDnh
CLS
ECHO.
ECHO                                 SMALL TOOL v1.0
ECHO                           Copyright @ MaDnh
ECHO                                     -=0=-
ECHO               ----------------------------------------------------
ECHO.
ECHO.
ECHO                1 - XOA autorun.inf trong 1 o dia
ECHO                2 - XOA autorun.inf trong TAT CA o dia
ECHO.
ECHO                3 - TAO file autorun.inf cho 1 o dia
ECHO                4 - TAO file autorun.inf cho TAT CA o dia
ECHO.
ECHO                5 - HIEN file/thu muc an 1 o dia
ECHO                6 - HIEN file/thu muc an TAT CA o dia
ECHO                7 - HIEN file/thu muc an trong 1 thu muc
ECHO.
ECHO.
ECHO                              8 - THOAT
ECHO.
ECHO ----------------------------------------------
SET /P M=Go vao tinh nang ban can va nhan ENTER: 
IF %M%==1 GOTO XOA_MOT
IF %M%==2 GOTO XOA_TAT_CA
IF %M%==3 GOTO TAO_MOT
IF %M%==4 GOTO TAO_TAT_CA
IF %M%==5 GOTO HIEN_MOT
IF %M%==6 GOTO HIEN_TAT_CA
IF %M%==7 GOTO HIEN_THU_MUC
IF %M%==8 GOTO END
GOTO START

:XOA_MOT
CLS
TITLE Xoa autorun.inf trong 1 o dia
ECHO.
ECHO                           XOA AUTORUN.INF TRONG 1 O DIA
ECHO               ----------------------------------------------------
ECHO.
SET /P A=Go vao KY TU O DIA va nhan ENTER: 
ECHO.
ECHO.
    IF EXIST %A%:\*.* (
        ECHO    %A%:\
		ECHO.
		IF NOT EXIST %A%:\autorun.inf ECHO                              KHONG CO AUTORUN.INF		
        IF EXIST %A%:\autorun.inf (
                ECHO      PHAT HIEN autorun.inf
                DEL %A%:\autorun.inf /Q
                IF EXIST %A%:\autorun.inf RD \\?\%A%:\autorun.inf /S /Q
                IF NOT EXIST %A%:\autorun.inf ECHO       ---DA XOA
            )


    )
	IF NOT EXIST %A%:\*.* (
		ECHO.
		ECHO                             KHONG TON TAI O DIA %A%:\
		ECHO.
		ECHO.
		ECHO -----------------------------------
		PAUSE
		GOTO XOA_MOT
		)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START

:XOA_TAT_CA
CLS
TITLE Xoa tat ca file autorun.inf
ECHO.
ECHO                           XOA TAT CA FILE AUTORUN.INF
ECHO               ----------------------------------------------------
ECHO.
FOR %%D in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (
    IF EXIST %%D:\*.* (
        ECHO.
		ECHO    %%D:\
		ECHO.
		IF NOT EXIST %%D:\autorun.inf ECHO      KHONG CO AUTORUN.INF		
        IF EXIST %%D:\autorun.inf (
                ECHO      PHAT HIEN autorun.inf
                DEL %%D:\autorun.inf /Q
                IF EXIST %%D:\autorun.inf RD \\?\%%D:\autorun.inf /S /Q
                IF NOT EXIST %%D:\autorun.inf ECHO       ---DA XOA
            )


    )
)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START

:TAO_MOT
CLS
TITLE Tao autorun.inf cho 1 o dia
ECHO.
ECHO                           TAO AUTORUN.INF CHO 1 O DIA
ECHO               ----------------------------------------------------
ECHO.
SET /P A=Go vao KY TU O DIA va nhan ENTER: 
ECHO.
ECHO.
IF EXIST %A%:\*.* (
        ECHO    %A%:\
		ECHO.
        IF EXIST %A%:\autorun.inf (
                ECHO      PHAT HIEN autorun.inf
                DEL %A%:\autorun.inf /Q
                IF EXIST %A%:\autorun.inf RD \\?\%A%:\autorun.inf /S /Q
                IF NOT EXIST %A%:\autorun.inf ECHO       ---DA XOA
            )
		IF NOT EXIST %A%:\autorun.inf (
                MD \\?\%A%:\"autorun.inf\MaDnh \"
				ATTRIB +S +A +R +H %A%:\autorun.inf
				IF EXIST %A%:\autorun.inf ECHO      Tao autorun.inf THANH CONG!!
				IF NOT EXIST %A%:\autorun.inf ECHO      Tao autorun.inf THAT BAI!!
            )

    )
IF NOT EXIST %A%:\*.* (
	ECHO.
	ECHO                             KHONG TON TAI O DIA %A%:\
	ECHO.
	ECHO.
	PAUSE
	GOTO MOT
	)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START

:TAO_TAT_CA
CLS
TITLE Tao autorun.inf cho tat ca o dia
ECHO.
ECHO                       TAO AUTORUN.INF CHO TAT CA O DIA
ECHO               ----------------------------------------------------
ECHO.
FOR %%D in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (
    IF EXIST %%D:\*.* (
        ECHO    %%D:\
        IF EXIST %%D:\autorun.inf (
                ECHO        PHAT HIEN autorun.inf
                DEL %%D:\autorun.inf /Q
                IF EXIST %%D:\autorun.inf RD \\?\%%D:\autorun.inf /S /Q
                IF NOT EXIST %%D:\autorun.inf ECHO        ---DA XOA
            )
		IF NOT EXIST %%D:\autorun.inf (
                MD \\?\%%D:\"autorun.inf\MaDnh \"
				ATTRIB +S +A +R +H %%D:\autorun.inf
				IF EXIST %%D:\autorun.inf ECHO        Tao autorun.inf THANH CONG!!
				IF NOT EXIST %%D:\autorun.inf ECHO        Tao autorun.inf THAT BAI!!
            )

    )
)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START

:HIEN_MOT
CLS
TITLE Hien file/thu muc an trong 1 o dia
ECHO.
ECHO                           HIEN FILE/THU MUC AN TRONG 1 O DIA
ECHO               ----------------------------------------------------
ECHO.
SET /P A=Go vao KY TU O DIA va nhan ENTER: 
ECHO.
ECHO.
IF EXIST %A%:\*.* (
	ECHO.
	ECHO    %A%:\
	ECHO           DANG THUC HIEN. DOI MOT LAT.......
	ATTRIB -A -R -H -S "%A%:\*.*" /S /D
	CLS
	ECHO.
	ECHO                           HIEN FILE/THU MUC AN TRONG 1 O DIA
	ECHO               ----------------------------------------------------
	ECHO.
	ECHO Go vao KY TU O DIA va nhan ENTER: %A%
	ECHO.
	ECHO    %A%:\
	ECHO.
	ECHO                               DA HIEN AN!!
	)
IF NOT EXIST %A%:\*.* (
	ECHO.
	ECHO                             KHONG TON TAI O DIA %A%:\
	ECHO.
	ECHO.
	ECHO -----------------------------------
	PAUSE
	GOTO HIEN_MOT
	)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START

:HIEN_TAT_CA
CLS
TITLE  Hien file/thu muc an tat ca o dia
ECHO.
ECHO                       HIEN FILE/THU MUC AN TAT CA O DIA
ECHO               ----------------------------------------------------
ECHO.
ECHO                                  XIN HAY DOI!!
ECHO.
FOR %%D in (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (
    IF EXIST %%D:\*.* (
        ECHO    %%D:\
		ATTRIB -A -R -H -S "%%D:\*.*" /S /D
		ECHO           HOAN THANH!
        
    )
)
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START
:HIEN_THU_MUC
CLS
TITLE Hien file/thu muc an trong thu muc
ECHO.
ECHO                       HIEN FILE/THU MUC AN TRONG THU MUC
ECHO               ----------------------------------------------------
ECHO.
ECHO.
ECHO.
ECHO           HAY COPY FILE CHUONG TRINH NAY VAO THU MUC BAN CAN HIEN AN!
ECHO.
ECHO.
ECHO.
ECHO -------------------------------------------------------------------
SET /P A=Ban da copy file chuong trinh vao thu muc can hien an (Y/N): 
IF %A%==Y GOTO DONG_Y
IF %A%==N GOTO START
GOTO HIEN_THU_MUC
:DONG_Y
CLS
ECHO.
ECHO                       HIEN FILE/THU MUC AN TRONG THU MUC
ECHO               ----------------------------------------------------
ECHO.
ECHO                               DANG THUC HIEN......
ATTRIB -A -R -H -S "*.*" /S /D
CLS
ECHO.
ECHO                       HIEN FILE/THU MUC AN TRONG THU MUC
ECHO               ----------------------------------------------------
ECHO.
ECHO.
ECHO                                   HOAN THANH!!
ECHO.
ECHO.
ECHO -----------------------------------
PAUSE
GOTO START
:END