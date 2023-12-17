.class public Lcom/android/cloud/bean/CloudFileItem;
.super Lcom/android/fileexplorer/dao/file/FileItem;
.source "CloudFileItem.java"


# instance fields
.field private appName:Ljava/lang/String;

.field public canRead:Z

.field public canWrite:Z

.field private cloudId:Ljava/lang/String;

.field private cloudLocalFileId:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private createTime:Ljava/lang/Long;

.field private creator:Ljava/lang/String;

.field public duration:J

.field private fileAbsolutePath:Ljava/lang/String;

.field private fileCategoryType:Ljava/lang/Integer;

.field private fileGroupId:Ljava/lang/Long;

.field private fileId:Ljava/lang/Long;

.field private fileMd5:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:Ljava/lang/Long;

.field private fileSummary:Ljava/lang/String;

.field private fileTag1:Ljava/lang/String;

.field private fileTag2:Ljava/lang/String;

.field private fileTag3:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field public isFav:Z

.field public isHidden:Z

.field private label:Ljava/lang/String;

.field private localCreateTime:Ljava/lang/Long;

.field private localModifyTime:Ljava/lang/Long;

.field public mJumpToVideo:Z

.field private modifyTime:Ljava/lang/Long;

.field private ocrCoordinate:Ljava/lang/String;

.field private ocrStatus:Ljava/lang/Integer;

.field private parentDir:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private privacyStatus:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private subFileCategoryType:Ljava/lang/String;

.field private transferId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 35

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileName:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileSize:Ljava/lang/Long;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->modifyTime:Ljava/lang/Long;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileGroupId:Ljava/lang/Long;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->cloudId:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->createTime:Ljava/lang/Long;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->localModifyTime:Ljava/lang/Long;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->localCreateTime:Ljava/lang/Long;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->type:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->parentId:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->revision:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->status:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->label:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->sha1:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->privacyStatus:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->coverUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileId:Ljava/lang/Long;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileMd5:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileAbsolutePath:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->parentDir:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->creator:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileCategoryType:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileSummary:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->ocrCoordinate:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->ocrStatus:Ljava/lang/Integer;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->groupName:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->appName:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->subFileCategoryType:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileTag1:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileTag2:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/cloud/bean/CloudFileItem;->fileTag3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->appName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCloudId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->cloudId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCloudLocalFileId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->cloudLocalFileId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->coverUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCreateTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->createTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->creator:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileAbsolutePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileAbsolutePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileCategoryType()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileCategoryType:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getFileGroupId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileGroupId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileMd5:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSize()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileSize:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileSummary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileSummary:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag2:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag3:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->groupName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->id:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->label:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocalCreateTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->localCreateTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getLocalModifyTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->localModifyTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getModifyTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->modifyTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getOcrCoordinate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->ocrCoordinate:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOcrStatus()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->ocrStatus:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getParentDir()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->parentDir:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->parentId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPrivacyStatus()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->privacyStatus:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->revision:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->sha1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->status:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSubFileCategoryType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->subFileCategoryType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTransferId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->transferId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileItem;->type:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->appName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCloudId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->cloudId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCloudLocalFileId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->cloudLocalFileId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->coverUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCreateTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->createTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->creator:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileAbsolutePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileAbsolutePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileCategoryType(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileCategoryType:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setFileGroupId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileGroupId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setFileId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileMd5:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileSize(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileSize:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setFileSummary(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileSummary:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag2(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag2:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag3(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->fileTag3:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->groupName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->id:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->label:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLocalCreateTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->localCreateTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setLocalModifyTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->localModifyTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setModifyTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->modifyTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setOcrCoordinate(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->ocrCoordinate:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setOcrStatus(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->ocrStatus:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setParentDir(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->parentDir:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->parentId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPrivacyStatus(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->privacyStatus:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->revision:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->sha1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->status:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSubFileCategoryType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->subFileCategoryType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->transferId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileItem;->type:Ljava/lang/String;

    .line 3
    return-void
.end method
