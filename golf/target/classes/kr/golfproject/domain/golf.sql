use golf;

-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- tbl_upload Table Create SQL
CREATE TABLE tbl_upload
(
    `upload_seq`      INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '업로드 순번', 
    `upload_subject`  VARCHAR(150)    NOT NULL    COMMENT '업로드 제목', 
    `upload_content`  TEXT            NOT NULL    COMMENT '업로드 내용', 
    `upload_date`     DATETIME        NOT NULL    DEFAULT NOW() COMMENT '업로드 날짜', 
    `upload_file`     VARCHAR(150)    NOT NULL    COMMENT '업로드 파일', 
    `m_idx`           INT UNSIGNED    NOT NULL    COMMENT '등록자 아이디', 
    `club_type`       VARCHAR(1)      NOT NULL    COMMENT '골프채 구분', 
     PRIMARY KEY (upload_seq)
);

ALTER TABLE tbl_upload COMMENT '업로드 영상';


-- tbl_deeplearning Table Create SQL
CREATE TABLE tbl_deeplearning
(
    `deep_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '딥러닝 순번', 
    `upload_seq`     INT UNSIGNED    NOT NULL    COMMENT '업로드 순번', 
    `deep_target`    VARCHAR(150)    NOT NULL    COMMENT '분석 목적', 
    `address`        TEXT            NOT NULL    COMMENT '어드레스', 
    `backswing`      TEXT            NOT NULL    COMMENT '백스윙', 
    `top`            TEXT            NOT NULL    COMMENT '탑', 
    `downswing`      TEXT            NOT NULL    COMMENT '다운스윙', 
    `acceleration`   TEXT            NOT NULL    COMMENT '가속', 
    `impact`         TEXT            NOT NULL    COMMENT '임팩트', 
    `followthrough`  TEXT            NOT NULL    COMMENT '팔로우스루', 
    `finish`         TEXT            NOT NULL    COMMENT '피니쉬', 
    `reg_date`       DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록일자', 
    `m_id`           VARCHAR(30)     NOT NULL    COMMENT '등록자 아이디', 
     PRIMARY KEY (deep_seq)
);

ALTER TABLE tbl_deeplearning COMMENT '딥러닝 스윙 분석';

ALTER TABLE tbl_deeplearning
    ADD CONSTRAINT FK_tbl_deeplearning_upload_seq_tbl_upload_upload_seq FOREIGN KEY (upload_seq)
        REFERENCES tbl_upload (upload_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tbl_member Table Create SQL
CREATE TABLE tbl_member
(
    `m_idx`            INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '회원 인덱스', 
    `m_pwd`            VARCHAR(30)     NOT NULL    COMMENT '회원 비밀번호', 
    `m_name`           VARCHAR(30)     NOT NULL    COMMENT '회원 이름', 
    `m_phone`          VARCHAR(18)     NOT NULL    DEFAULT '000-0000-0000' COMMENT '회원 연락처', 
    `m_id`             VARCHAR(50)     NOT NULL    COMMENT '회원 아이디', 
    `m_gender`         VARCHAR(1)      NOT NULL    DEFAULT '남' COMMENT '회원 성별', 
    `m_birthdate`      VARCHAR(30)     NOT NULL    DEFAULT '2000-01-01' COMMENT '회원 생년월일', 
    `m_joindate`       DATETIME        NOT NULL    DEFAULT NOW() COMMENT '회원 가입일자', 
    `iron_distance`    INT             NOT NULL    DEFAULT 0 COMMENT '아이언 비거리', 
    `driver_distance`  INT             NOT NULL    DEFAULT 0 COMMENT '드라이버 비거리', 
    `m_score`          INT             NOT NULL    DEFAULT 0 COMMENT '스코어', 
    `admin_yn`         VARCHAR(1)      NOT NULL    DEFAULT 'N' COMMENT '관리자 여부', 
     PRIMARY KEY (m_idx)
);

ALTER TABLE tbl_member COMMENT '회원 관리 테이블';

ALTER TABLE tbl_member
    ADD CONSTRAINT FK_tbl_member_m_idx_tbl_upload_m_idx FOREIGN KEY (m_idx)
        REFERENCES tbl_upload (m_idx) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tbl_skeleton_video Table Create SQL
CREATE TABLE tbl_skeleton_video
(
    `video_seq`   INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '스켈 비디오 순번', 
    `video_path`  VARCHAR(150)    NOT NULL    COMMENT '비디오 경로', 
    `reg_date`    DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록 일자', 
    `m_idx`       INT UNSIGNED    NOT NULL    COMMENT '등록자 아이디', 
    `upload_seq`  INT UNSIGNED    NOT NULL    COMMENT '업로드 순번', 
     PRIMARY KEY (video_seq)
);

ALTER TABLE tbl_skeleton_video
    ADD CONSTRAINT FK_tbl_skeleton_video_upload_seq_tbl_upload_upload_seq FOREIGN KEY (upload_seq)
        REFERENCES tbl_upload (upload_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE tbl_skeleton_video
    ADD CONSTRAINT FK_tbl_skeleton_video_m_idx_tbl_member_m_idx FOREIGN KEY (m_idx)
        REFERENCES tbl_member (m_idx) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- tbl_swing Table Create SQL
CREATE TABLE tbl_swing
(
    `reco_seq`          INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '추천 순번', 
    `deep_seq`          INT UNSIGNED    NOT NULL    COMMENT '딥러닝 순번', 
    `swing_type`        VARCHAR(30)     NOT NULL    COMMENT '스윙 동작', 
    `head_action`       TEXT            NULL        COMMENT '머리 동작', 
    `shoulder__action`  TEXT            NULL        COMMENT '어깨 동작', 
    `arm__action`       TEXT            NULL        COMMENT '팔 동작', 
    `waist_action`      TEXT            NULL        COMMENT '허리 동작', 
    `core__action`      TEXT            NULL        COMMENT '골반 동작', 
    `knee_action`       TEXT            NULL        COMMENT '무릎 동작', 
    `foot_action`       TEXT            NULL        COMMENT '발 동작', 
    `weight_center`     TEXT            NULL        COMMENT '무게 중심', 
    `reg_date`          DATETIME        NOT NULL    DEFAULT NOW() COMMENT '등록 일자', 
     PRIMARY KEY (reco_seq)
);

ALTER TABLE tbl_swing COMMENT '추천 스윙 동작';

ALTER TABLE tbl_swing
    ADD CONSTRAINT FK_tbl_swing_deep_seq_tbl_deeplearning_deep_seq FOREIGN KEY (deep_seq)
        REFERENCES tbl_deeplearning (deep_seq) ON DELETE RESTRICT ON UPDATE RESTRICT;

        
select * from tbl_member;
delete from tbl_member;

select * from tbl_upload;
delete from tbl_upload;
select * from tbl_upload where m_idx = 34 order by upload_seq desc LIMIT 1;

INSERT into tbl_deeplearning(upload_seq, deep_target, address, backswing, top, downswing, acceleration, impact, followthrough, finish, m_id) 
values(124, "???", "_10.jpg", "백스윙", "_30.jpg", "_50.jpg", "가속", "_70.jpg","_90.jpg","피니쉬","salja")

select * from tbl_deeplearning;
delete from tbl_deeplearning;

INSERT into tbl_swing(deep_seq, swing_type, head_action, shoulder__action, arm__action, waist_action, core__action, knee_action, foot_action, weight_center, head_code_x, shoulder_code_x, arm_code_x, waist_code_x, core_code_x, knee_code_x, foot_code_x, head_code_y, shoulder_code_y, arm_code_y, waist_code_y, core_code_y, knee_code_y, foot_code_y) 
values(6, "address", "ㄴㅁㅇㅁㅇㅁㅇㅁㅇ", "ㅅㅎㅎ흉율ㄹㅇ", "ㄴㄹㅇㅇㄴㅁㄴㅁㅇㄴㄹㄴㅇㄻ", "ㅊㅁㄴㅊㅁㄴㅊㄴㅁㅊㅁㄴㅊㅁㅊ", "ㄴㅇㄹㄴㅇㅍㄴㅇㅍㄴㅇㅍㄴㅇ","ㅍㄴㅇㅇㅍㅇㄴㅍㄴㅇㅍ","피니쉬","피니쉬",500,200,100,300,400,600,100,100,500,200,300,400,500,600)

INSERT into tbl_swing(deep_seq, swing_type, head_action, shoulder__action, arm__action, waist_action, core__action, knee_action, foot_action, weight_center, head_code_x, shoulder_code_x, arm_code_x, waist_code_x, core_code_x, knee_code_x, foot_code_x, head_code_y, shoulder_code_y, arm_code_y, waist_code_y, core_code_y, knee_code_y, foot_code_y) 
values(6, "top", "111111", "111111", "111111", "111111", "111111","111111","111111","111111",100,200,300,400,500,600,700,700,600,500,400,300,200,100)

INSERT into tbl_swing(deep_seq, swing_type, head_action, shoulder__action, arm__action, waist_action, core__action, knee_action, foot_action, weight_center, head_code_x, shoulder_code_x, arm_code_x, waist_code_x, core_code_x, knee_code_x, foot_code_x, head_code_y, shoulder_code_y, arm_code_y, waist_code_y, core_code_y, knee_code_y, foot_code_y) 
values(6, "downswing", "222222", "222222", "222222", "222222", "222222","222222","222222","222222",300,300,500,600,300,400,500,100,200,400,600,400,300,200)

INSERT into tbl_swing(deep_seq, swing_type, head_action, shoulder__action, arm__action, waist_action, core__action, knee_action, foot_action, weight_center, head_code_x, shoulder_code_x, arm_code_x, waist_code_x, core_code_x, knee_code_x, foot_code_x, head_code_y, shoulder_code_y, arm_code_y, waist_code_y, core_code_y, knee_code_y, foot_code_y) 
values(6, "impact", "333333", "333333", "333333", "333333", "333333","333333","333333","333333",100,200,300,400,500,600,700,700,600,500,400,300,200,100)

INSERT into tbl_swing(deep_seq, swing_type, head_action, shoulder__action, arm__action, waist_action, core__action, knee_action, foot_action, weight_center, head_code_x, shoulder_code_x, arm_code_x, waist_code_x, core_code_x, knee_code_x, foot_code_x, head_code_y, shoulder_code_y, arm_code_y, waist_code_y, core_code_y, knee_code_y, foot_code_y) 
values(6, "followthrough", "444444", "444444", "444444", "444444", "444444","444444","444444","444444",200,300,500,100,200,300,600,600,600,600,300,300,300,100)

select * from tbl_swing;
delete from tbl_swing;

INSERT into tbl_skeleton_video(video_seq, video_path, reg_date, m_idx, upload_seq) 
values(1, "C:/Users/smhrd/git/golfweb/golf/src/main/webapp/resources/static/skeletonmovie/mic9.mp4", "2021-12-14 21:08:20.0", 34, 124)

select * from tbl_skeleton_video;
select * from tbl_skeleton_video where m_idx = 34 and upload_seq = 124;