.class public Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;
.super Ljava/lang/Object;
.source "FileGroupDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/file/FileGroupDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AppIcon:Lorg/greenrobot/greendao/Property;

.field public static final AppId:Lorg/greenrobot/greendao/Property;

.field public static final AppName:Lorg/greenrobot/greendao/Property;

.field public static final DirId:Lorg/greenrobot/greendao/Property;

.field public static final GroupCreateTime:Lorg/greenrobot/greendao/Property;

.field public static final GroupEndTime:Lorg/greenrobot/greendao/Property;

.field public static final GroupFileType:Lorg/greenrobot/greendao/Property;

.field public static final GroupKey:Lorg/greenrobot/greendao/Property;

.field public static final GroupName:Lorg/greenrobot/greendao/Property;

.field public static final GroupPath:Lorg/greenrobot/greendao/Property;

.field public static final GroupStartTime:Lorg/greenrobot/greendao/Property;

.field public static final GroupSummary:Lorg/greenrobot/greendao/Property;

.field public static final GroupTag1:Lorg/greenrobot/greendao/Property;

.field public static final GroupTag2:Lorg/greenrobot/greendao/Property;

.field public static final GroupTag3:Lorg/greenrobot/greendao/Property;

.field public static final GroupType:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final PackageName:Lorg/greenrobot/greendao/Property;

.field public static final SummaryTime:Lorg/greenrobot/greendao/Property;


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
    sput-object v6, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 19
    const-class v9, Ljava/lang/String;

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v10, "groupKey"

    .line 24
    const/4 v11, 0x0

    .line 25
    const-string v12, "GROUP_KEY"

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 35
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    const/4 v2, 0x2

    .line 38
    const-string v4, "groupType"

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "GROUP_TYPE"

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 51
    const-class v9, Ljava/lang/String;

    .line 53
    const/4 v8, 0x3

    .line 54
    const-string v10, "groupName"

    .line 56
    const-string v12, "GROUP_NAME"

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 66
    const-class v3, Ljava/lang/Long;

    .line 68
    const/4 v2, 0x4

    .line 69
    const-string v4, "groupCreateTime"

    .line 71
    const-string v6, "GROUP_CREATE_TIME"

    .line 73
    move-object v1, v0

    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 79
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 81
    const-class v9, Ljava/lang/Long;

    .line 83
    const/4 v8, 0x5

    .line 84
    const-string v10, "groupStartTime"

    .line 86
    const-string v12, "GROUP_START_TIME"

    .line 88
    move-object v7, v0

    .line 89
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupStartTime:Lorg/greenrobot/greendao/Property;

    .line 94
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 96
    const-class v3, Ljava/lang/Long;

    .line 98
    const/4 v2, 0x6

    .line 99
    const-string v4, "groupEndTime"

    .line 101
    const-string v6, "GROUP_END_TIME"

    .line 103
    move-object v1, v0

    .line 104
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 107
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupEndTime:Lorg/greenrobot/greendao/Property;

    .line 109
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 111
    const-class v9, Ljava/lang/String;

    .line 113
    const/4 v8, 0x7

    .line 114
    const-string v10, "groupPath"

    .line 116
    const-string v12, "GROUP_PATH"

    .line 118
    move-object v7, v0

    .line 119
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 124
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 126
    const-class v3, Ljava/lang/Integer;

    .line 128
    const/16 v2, 0x8

    .line 130
    const-string v4, "groupFileType"

    .line 132
    const-string v6, "GROUP_FILE_TYPE"

    .line 134
    move-object v1, v0

    .line 135
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 138
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    .line 140
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 142
    const-class v9, Ljava/lang/String;

    .line 144
    const/16 v8, 0x9

    .line 146
    const-string v10, "groupSummary"

    .line 148
    const-string v12, "GROUP_SUMMARY"

    .line 150
    move-object v7, v0

    .line 151
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 154
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    .line 156
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 158
    const-class v3, Ljava/lang/Long;

    .line 160
    const/16 v2, 0xa

    .line 162
    const-string v4, "dirId"

    .line 164
    const-string v6, "DIR_ID"

    .line 166
    move-object v1, v0

    .line 167
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 172
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 174
    const-class v9, Ljava/lang/String;

    .line 176
    const/16 v8, 0xb

    .line 178
    const-string v10, "appName"

    .line 180
    const-string v12, "APP_NAME"

    .line 182
    move-object v7, v0

    .line 183
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 186
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 188
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 190
    const-class v3, Ljava/lang/String;

    .line 192
    const/16 v2, 0xc

    .line 194
    const-string v4, "packageName"

    .line 196
    const-string v6, "PACKAGE_NAME"

    .line 198
    move-object v1, v0

    .line 199
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 202
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 204
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 206
    const-class v9, Ljava/lang/String;

    .line 208
    const/16 v8, 0xd

    .line 210
    const-string v10, "groupTag1"

    .line 212
    const-string v12, "GROUP_TAG1"

    .line 214
    move-object v7, v0

    .line 215
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 218
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag1:Lorg/greenrobot/greendao/Property;

    .line 220
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 222
    const-class v3, Ljava/lang/String;

    .line 224
    const/16 v2, 0xe

    .line 226
    const-string v4, "groupTag2"

    .line 228
    const-string v6, "GROUP_TAG2"

    .line 230
    move-object v1, v0

    .line 231
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 234
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag2:Lorg/greenrobot/greendao/Property;

    .line 236
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 238
    const-class v9, Ljava/lang/String;

    .line 240
    const/16 v8, 0xf

    .line 242
    const-string v10, "groupTag3"

    .line 244
    const-string v12, "GROUP_TAG3"

    .line 246
    move-object v7, v0

    .line 247
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 250
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupTag3:Lorg/greenrobot/greendao/Property;

    .line 252
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 254
    const-class v3, Ljava/lang/String;

    .line 256
    const/16 v2, 0x10

    .line 258
    const-string v4, "appIcon"

    .line 260
    const-string v6, "APP_ICON"

    .line 262
    move-object v1, v0

    .line 263
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 266
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 268
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 270
    const-class v9, Ljava/lang/Long;

    .line 272
    const/16 v8, 0x11

    .line 274
    const-string v10, "appId"

    .line 276
    const-string v12, "APP_ID"

    .line 278
    move-object v7, v0

    .line 279
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 282
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 284
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 286
    const-class v3, Ljava/lang/Long;

    .line 288
    const/16 v2, 0x12

    .line 290
    const-string v4, "summaryTime"

    .line 292
    const-string v6, "SUMMARY_TIME"

    .line 294
    move-object v1, v0

    .line 295
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 298
    sput-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->SummaryTime:Lorg/greenrobot/greendao/Property;

    .line 300
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
