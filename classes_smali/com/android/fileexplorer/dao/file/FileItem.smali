.class public Lcom/android/fileexplorer/dao/file/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/AppTagCheckItem;
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private appName:Ljava/lang/String;

.field public canRead:Z

.field public canWrite:Z

.field private creator:Ljava/lang/String;

.field public duration:J

.field private fileAbsolutePath:Ljava/lang/String;

.field private fileCategoryType:Ljava/lang/Integer;

.field private fileId:Ljava/lang/Long;

.field private fileMd5:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private fileSize:Ljava/lang/Long;

.field private fileSummary:Ljava/lang/String;

.field private fileTag1:Ljava/lang/String;

.field private fileTag2:Ljava/lang/String;

.field private fileTag3:Ljava/lang/String;

.field public formatFileSize:Ljava/lang/String;

.field public formatFileTime:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field public groupTitle:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field public isFav:Z

.field public isHidden:Z

.field public mEllipsizeName:Ljava/lang/String;

.field public mJumpToVideo:Z

.field private modifyTime:Ljava/lang/Long;

.field private ocrCoordinate:Ljava/lang/String;

.field private ocrStatus:Ljava/lang/Integer;

.field private parentDir:Ljava/lang/String;

.field private subFileCategoryType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileId:Ljava/lang/Long;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileMd5:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileName:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileAbsolutePath:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->modifyTime:Ljava/lang/Long;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->parentDir:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->creator:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileCategoryType:Ljava/lang/Integer;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSummary:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrCoordinate:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrStatus:Ljava/lang/Integer;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->groupName:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->appName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->subFileCategoryType:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSize:Ljava/lang/Long;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag1:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag2:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->appName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->creator:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileAbsolutePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileAbsolutePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileCategoryType()Ljava/lang/Integer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileCategoryType:Ljava/lang/Integer;

    .line 3
    if-nez v0, :cond_16

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getFileCategoryType error"

    .line 15
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    :cond_16
    return-object v0
.end method

.method public getFileId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileMd5:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSize()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSize:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getFileSummary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSummary:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag2:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileTag3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag3:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFormatFileSize()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFormatFileTime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->groupName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->id:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getModifyTime()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->modifyTime:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getOcrCoordinate()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrCoordinate:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOcrStatus()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrStatus:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getParentDir()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->parentDir:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSubFileCategoryType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->subFileCategoryType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileId(Ljava/lang/Long;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileMd5:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileMd5(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileName(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 47
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 58
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setModifyTime(Ljava/lang/Long;)V

    .line 67
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ParentDir:Lorg/greenrobot/greendao/Property;

    .line 69
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setParentDir(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Creator:Lorg/greenrobot/greendao/Property;

    .line 80
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setCreator(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 91
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 100
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSummary:Lorg/greenrobot/greendao/Property;

    .line 102
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSummary(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrCoordinate:Lorg/greenrobot/greendao/Property;

    .line 113
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrCoordinate(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrStatus:Lorg/greenrobot/greendao/Property;

    .line 124
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setOcrStatus(Ljava/lang/Integer;)V

    .line 133
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 135
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setGroupName(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 146
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setAppName(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->SubFileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 157
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setSubFileCategoryType(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 168
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileSize(Ljava/lang/Long;)V

    .line 177
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 179
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag1(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    .line 190
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag2(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag3:Lorg/greenrobot/greendao/Property;

    .line 201
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileTag3(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->appName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->creator:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileAbsolutePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileAbsolutePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileCategoryType(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileCategoryType:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setFileId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileMd5:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileName:Ljava/lang/String;

    .line 3
    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->mEllipsizeName:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public setFileSize(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSize:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setFileSummary(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileSummary:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag2(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag2:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileTag3(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->fileTag3:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFormatFileSize(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileSize:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFormatFileTime(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->formatFileTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->groupName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setGroupTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->groupTitle:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->id:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setModifyTime(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->modifyTime:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setOcrCoordinate(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrCoordinate:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setOcrStatus(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->ocrStatus:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setParentDir(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->parentDir:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSubFileCategoryType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileItem;->subFileCategoryType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileId()Ljava/lang/Long;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileMd5:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileMd5()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 52
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 63
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ParentDir:Lorg/greenrobot/greendao/Property;

    .line 74
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getParentDir()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Creator:Lorg/greenrobot/greendao/Property;

    .line 85
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getCreator()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 96
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileCategoryType()Ljava/lang/Integer;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSummary:Lorg/greenrobot/greendao/Property;

    .line 107
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSummary()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrCoordinate:Lorg/greenrobot/greendao/Property;

    .line 118
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getOcrCoordinate()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrStatus:Lorg/greenrobot/greendao/Property;

    .line 129
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getOcrStatus()Ljava/lang/Integer;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 140
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getGroupName()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 151
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->SubFileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 162
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getSubFileCategoryType()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 173
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 184
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    .line 195
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag2()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag3:Lorg/greenrobot/greendao/Property;

    .line 206
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag3()Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v0
.end method
