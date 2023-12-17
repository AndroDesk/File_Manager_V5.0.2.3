.class public Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;
.super Ljava/lang/Object;
.source "WidgetPinFileDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AddTime:Lorg/greenrobot/greendao/Property;

.field public static final FileAbsolutePath:Lorg/greenrobot/greendao/Property;

.field public static final FileCategoryType:Lorg/greenrobot/greendao/Property;

.field public static final FileId:Lorg/greenrobot/greendao/Property;

.field public static final FileName:Lorg/greenrobot/greendao/Property;

.field public static final FileSize:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final ModifyTime:Lorg/greenrobot/greendao/Property;


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
    sput-object v6, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 19
    const-class v9, Ljava/lang/String;

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v10, "fileName"

    .line 24
    const/4 v11, 0x0

    .line 25
    const-string v12, "FILE_NAME"

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 35
    const-class v3, Ljava/lang/String;

    .line 37
    const/4 v2, 0x2

    .line 38
    const-string v4, "fileAbsolutePath"

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v6, "FILE_ABSOLUTE_PATH"

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 51
    const-class v9, Ljava/lang/Long;

    .line 53
    const/4 v8, 0x3

    .line 54
    const-string v10, "modifyTime"

    .line 56
    const-string v12, "MODIFY_TIME"

    .line 58
    move-object v7, v0

    .line 59
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 66
    const-class v3, Ljava/lang/Integer;

    .line 68
    const/4 v2, 0x4

    .line 69
    const-string v4, "fileCategoryType"

    .line 71
    const-string v6, "FILE_CATEGORY_TYPE"

    .line 73
    move-object v1, v0

    .line 74
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 77
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 79
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 81
    const-class v9, Ljava/lang/Long;

    .line 83
    const/4 v8, 0x5

    .line 84
    const-string v10, "fileSize"

    .line 86
    const-string v12, "FILE_SIZE"

    .line 88
    move-object v7, v0

    .line 89
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 94
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 96
    const-class v3, Ljava/lang/Long;

    .line 98
    const/4 v2, 0x6

    .line 99
    const-string v4, "addTime"

    .line 101
    const-string v6, "ADD_TIME"

    .line 103
    move-object v1, v0

    .line 104
    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 107
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->AddTime:Lorg/greenrobot/greendao/Property;

    .line 109
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 111
    const-class v9, Ljava/lang/Long;

    .line 113
    const/4 v8, 0x7

    .line 114
    const-string v10, "fileId"

    .line 116
    const-string v12, "FILE_ID"

    .line 118
    move-object v7, v0

    .line 119
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 122
    sput-object v0, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
