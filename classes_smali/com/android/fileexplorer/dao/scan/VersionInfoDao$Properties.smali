.class public Lcom/android/fileexplorer/dao/scan/VersionInfoDao$Properties;
.super Ljava/lang/Object;
.source "VersionInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/dao/scan/VersionInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Description:Lorg/greenrobot/greendao/Property;

.field public static final MaxOpver:Lorg/greenrobot/greendao/Property;


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
    const-string v3, "maxOpver"

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "MAX_OPVER"

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    sput-object v6, Lcom/android/fileexplorer/dao/scan/VersionInfoDao$Properties;->MaxOpver:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    .line 19
    const-class v9, Ljava/lang/String;

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v10, "description"

    .line 24
    const/4 v11, 0x1

    .line 25
    const-string v12, "DESCRIPTION"

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    .line 31
    sput-object v0, Lcom/android/fileexplorer/dao/scan/VersionInfoDao$Properties;->Description:Lorg/greenrobot/greendao/Property;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
