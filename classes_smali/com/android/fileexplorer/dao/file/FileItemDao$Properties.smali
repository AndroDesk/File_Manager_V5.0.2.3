.class public Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;
.super Ljava/lang/Object;
.source "FileItemDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/file/FileItemDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AppName:Lorg/greenrobot/greendao/Property;

.field public static final Creator:Lorg/greenrobot/greendao/Property;

.field public static final FileAbsolutePath:Lorg/greenrobot/greendao/Property;

.field public static final FileCategoryType:Lorg/greenrobot/greendao/Property;

.field public static final FileId:Lorg/greenrobot/greendao/Property;

.field public static final FileMd5:Lorg/greenrobot/greendao/Property;

.field public static final FileName:Lorg/greenrobot/greendao/Property;

.field public static final FileSize:Lorg/greenrobot/greendao/Property;

.field public static final FileSummary:Lorg/greenrobot/greendao/Property;

.field public static final FileTag1:Lorg/greenrobot/greendao/Property;

.field public static final FileTag2:Lorg/greenrobot/greendao/Property;

.field public static final FileTag3:Lorg/greenrobot/greendao/Property;

.field public static final GroupName:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final ModifyTime:Lorg/greenrobot/greendao/Property;

.field public static final OcrCoordinate:Lorg/greenrobot/greendao/Property;

.field public static final OcrStatus:Lorg/greenrobot/greendao/Property;

.field public static final ParentDir:Lorg/greenrobot/greendao/Property;

.field public static final SubFileCategoryType:Lorg/greenrobot/greendao/Property;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    .line 3
    const-class v2, Ljava/lang/Long;

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v3, "id"

    .line 8
    const/4 v4, 0x1

    .line 9
    const-string v5, "_id"

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    sput-object v6, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 19
    const-class v9, Ljava/lang/Long;

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v10, "fileId"

    .line 24
    const/4 v11, 0x0

    .line 25
    const-string v12, "FILE_ID"

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 35
    const-class v3, Ljava/lang/String;

    .line 37
    const/4 v2, 0x2

    .line 38
    const-string v4, "fileMd5"

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "FILE_MD5"

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileMd5:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 51
    const-class v9, Ljava/lang/String;

    .line 53
    const/4 v8, 0x3

    .line 54
    const-string v10, "fileName"

    .line 56
    const-string v12, "FILE_NAME"

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 66
    const-class v3, Ljava/lang/String;

    .line 68
    const/4 v2, 0x4

    .line 69
    const-string v4, "fileAbsolutePath"

    .line 71
    const-string v6, "FILE_ABSOLUTE_PATH"

    .line 73
    move-object v1, v0

    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 79
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 81
    const-class v9, Ljava/lang/Long;

    .line 83
    const/4 v8, 0x5

    .line 84
    const-string v10, "modifyTime"

    .line 86
    const-string v12, "MODIFY_TIME"

    .line 88
    move-object v7, v0

    .line 89
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 94
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 96
    const-class v3, Ljava/lang/String;

    .line 98
    const/4 v2, 0x6

    .line 99
    const-string v4, "parentDir"

    .line 101
    const-string v6, "PARENT_DIR"

    .line 103
    move-object v1, v0

    .line 104
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 107
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ParentDir:Lorg/greenrobot/greendao/Property;

    .line 109
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 111
    const-class v9, Ljava/lang/String;

    .line 113
    const/4 v8, 0x7

    .line 114
    const-string v10, "creator"

    .line 116
    const-string v12, "CREATOR"

    .line 118
    move-object v7, v0

    .line 119
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->Creator:Lorg/greenrobot/greendao/Property;

    .line 124
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 126
    const-class v3, Ljava/lang/Integer;

    .line 128
    const/16 v2, 0x8

    .line 130
    const-string v4, "fileCategoryType"

    .line 132
    const-string v6, "FILE_CATEGORY_TYPE"

    .line 134
    move-object v1, v0

    .line 135
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 138
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 140
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 142
    const-class v9, Ljava/lang/String;

    .line 144
    const/16 v8, 0x9

    .line 146
    const-string v10, "fileSummary"

    .line 148
    const-string v12, "FILE_SUMMARY"

    .line 150
    move-object v7, v0

    .line 151
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 154
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSummary:Lorg/greenrobot/greendao/Property;

    .line 156
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 158
    const-class v3, Ljava/lang/String;

    .line 160
    const/16 v2, 0xa

    .line 162
    const-string v4, "ocrCoordinate"

    .line 164
    const-string v6, "OCR_COORDINATE"

    .line 166
    move-object v1, v0

    .line 167
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrCoordinate:Lorg/greenrobot/greendao/Property;

    .line 172
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 174
    const-class v9, Ljava/lang/Integer;

    .line 176
    const/16 v8, 0xb

    .line 178
    const-string v10, "ocrStatus"

    .line 180
    const-string v12, "OCR_STATUS"

    .line 182
    move-object v7, v0

    .line 183
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 186
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->OcrStatus:Lorg/greenrobot/greendao/Property;

    .line 188
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 190
    const-class v3, Ljava/lang/String;

    .line 192
    const/16 v2, 0xc

    .line 194
    const-string v4, "groupName"

    .line 196
    const-string v6, "GROUP_NAME"

    .line 198
    move-object v1, v0

    .line 199
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 202
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 204
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 206
    const-class v9, Ljava/lang/String;

    .line 208
    const/16 v8, 0xd

    .line 210
    const-string v10, "appName"

    .line 212
    const-string v12, "APP_NAME"

    .line 214
    move-object v7, v0

    .line 215
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 218
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 220
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 222
    const-class v3, Ljava/lang/String;

    .line 224
    const/16 v2, 0xe

    .line 226
    const-string v4, "subFileCategoryType"

    .line 228
    const-string v6, "SUB_FILE_CATEGORY_TYPE"

    .line 230
    move-object v1, v0

    .line 231
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 234
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->SubFileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 236
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 238
    const-class v9, Ljava/lang/Long;

    .line 240
    const/16 v8, 0xf

    .line 242
    const-string v10, "fileSize"

    .line 244
    const-string v12, "FILE_SIZE"

    .line 246
    move-object v7, v0

    .line 247
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 250
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 252
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 254
    const-class v3, Ljava/lang/String;

    .line 256
    const/16 v2, 0x10

    .line 258
    const-string v4, "fileTag1"

    .line 260
    const-string v6, "FILE_TAG1"

    .line 262
    move-object v1, v0

    .line 263
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 266
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 268
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 270
    const-class v9, Ljava/lang/String;

    .line 272
    const/16 v8, 0x11

    .line 274
    const-string v10, "fileTag2"

    .line 276
    const-string v12, "FILE_TAG2"

    .line 278
    move-object v7, v0

    .line 279
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 282
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    .line 284
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 286
    const-class v3, Ljava/lang/String;

    .line 288
    const/16 v2, 0x12

    .line 290
    const-string v4, "fileTag3"

    .line 292
    const-string v6, "FILE_TAG3"

    .line 294
    move-object v1, v0

    .line 295
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 298
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag3:Lorg/greenrobot/greendao/Property;

    .line 300
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
