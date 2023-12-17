.class public Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;
.super Ljava/lang/Object;
.source "AppScanConfigDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/scan/AppScanConfigDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AppDirPath:Lorg/greenrobot/greendao/Property;

.field public static final AppDirTag:Lorg/greenrobot/greendao/Property;

.field public static final AppId:Lorg/greenrobot/greendao/Property;

.field public static final DirId:Lorg/greenrobot/greendao/Property;

.field public static final DirName:Lorg/greenrobot/greendao/Property;

.field public static final DirType:Lorg/greenrobot/greendao/Property;

.field public static final DirectName:Lorg/greenrobot/greendao/Property;

.field public static final Notification:Lorg/greenrobot/greendao/Property;

.field public static final State:Lorg/greenrobot/greendao/Property;

.field public static final SubDirFlag:Lorg/greenrobot/greendao/Property;

.field public static final SubDirName:Lorg/greenrobot/greendao/Property;

.field public static final UserModified:Lorg/greenrobot/greendao/Property;


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
    const-string v3, "dirId"

    .line 8
    const/4 v4, 0x1

    .line 9
    const-string v5, "DIR_ID"

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    sput-object v6, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 19
    const-class v9, Ljava/lang/Long;

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v10, "appId"

    .line 24
    const/4 v11, 0x0

    .line 25
    const-string v12, "APP_ID"

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 35
    const-class v3, Ljava/lang/String;

    .line 37
    const/4 v2, 0x2

    .line 38
    const-string v4, "dirName"

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "DIR_NAME"

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 51
    const-class v9, Ljava/lang/Integer;

    .line 53
    const/4 v8, 0x3

    .line 54
    const-string v10, "dirType"

    .line 56
    const-string v12, "DIR_TYPE"

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirType:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 66
    const-class v3, Ljava/lang/String;

    .line 68
    const/4 v2, 0x4

    .line 69
    const-string v4, "subDirName"

    .line 71
    const-string v6, "SUB_DIR_NAME"

    .line 73
    move-object v1, v0

    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirName:Lorg/greenrobot/greendao/Property;

    .line 79
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 81
    const-class v9, Ljava/lang/String;

    .line 83
    const/4 v8, 0x5

    .line 84
    const-string v10, "subDirFlag"

    .line 86
    const-string v12, "SUB_DIR_FLAG"

    .line 88
    move-object v7, v0

    .line 89
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirFlag:Lorg/greenrobot/greendao/Property;

    .line 94
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 96
    const-class v3, Ljava/lang/String;

    .line 98
    const/4 v2, 0x6

    .line 99
    const-string v4, "directName"

    .line 101
    const-string v6, "DIRECT_NAME"

    .line 103
    move-object v1, v0

    .line 104
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 107
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirectName:Lorg/greenrobot/greendao/Property;

    .line 109
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 111
    const-class v9, Ljava/lang/String;

    .line 113
    const/4 v8, 0x7

    .line 114
    const-string v10, "appDirTag"

    .line 116
    const-string v12, "APP_DIR_TAG"

    .line 118
    move-object v7, v0

    .line 119
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirTag:Lorg/greenrobot/greendao/Property;

    .line 124
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 126
    const-class v3, Ljava/lang/String;

    .line 128
    const/16 v2, 0x8

    .line 130
    const-string v4, "state"

    .line 132
    const-string v6, "STATE"

    .line 134
    move-object v1, v0

    .line 135
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 138
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    .line 140
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 142
    const-class v9, Ljava/lang/String;

    .line 144
    const/16 v8, 0x9

    .line 146
    const-string v10, "appDirPath"

    .line 148
    const-string v12, "APP_DIR_PATH"

    .line 150
    move-object v7, v0

    .line 151
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 154
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirPath:Lorg/greenrobot/greendao/Property;

    .line 156
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 158
    const-class v3, Ljava/lang/Boolean;

    .line 160
    const/16 v2, 0xa

    .line 162
    const-string v4, "notification"

    .line 164
    const-string v6, "NOTIFICATION"

    .line 166
    move-object v1, v0

    .line 167
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->Notification:Lorg/greenrobot/greendao/Property;

    .line 172
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 174
    const-class v9, Ljava/lang/Boolean;

    .line 176
    const/16 v8, 0xb

    .line 178
    const-string v10, "userModified"

    .line 180
    const-string v12, "USER_MODIFIED"

    .line 182
    move-object v7, v0

    .line 183
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 186
    sput-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->UserModified:Lorg/greenrobot/greendao/Property;

    .line 188
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
