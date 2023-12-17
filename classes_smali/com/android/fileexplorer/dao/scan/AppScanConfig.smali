.class public Lcom/android/fileexplorer/dao/scan/AppScanConfig;
.super Ljava/lang/Object;
.source "AppScanConfig.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private appDirPath:Ljava/lang/String;

.field private appDirTag:Ljava/lang/String;

.field private appId:Ljava/lang/Long;

.field private dirId:Ljava/lang/Long;

.field private dirName:Ljava/lang/String;

.field private dirType:Ljava/lang/Integer;

.field private directName:Ljava/lang/String;

.field private notification:Ljava/lang/Boolean;

.field private state:Ljava/lang/String;

.field private subDirFlag:Ljava/lang/String;

.field private subDirName:Ljava/lang/String;

.field private userModified:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    iput-object p12, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAppDirPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDirTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDirId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirType()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDirectName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDirFlag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDirName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModified()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirType:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirType(Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirFlag:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirFlag(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirectName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirectName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirTag:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirTag(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setState(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirPath:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->Notification:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v2

    :goto_81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setNotification(Ljava/lang/Boolean;)V

    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->UserModified:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_97

    goto :goto_98

    :cond_97
    move v1, v2

    :goto_98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setUserModified(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAppDirPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    return-void
.end method

.method public setAppDirTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    return-void
.end method

.method public setDirId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    return-void
.end method

.method public setDirName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    return-void
.end method

.method public setDirType(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    return-void
.end method

.method public setDirectName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    return-void
.end method

.method public setNotification(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    return-void
.end method

.method public setSubDirFlag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    return-void
.end method

.method public setSubDirName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    return-void
.end method

.method public setUserModified(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirType:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirFlag:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirectName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirTag:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirPath:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->Notification:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_87

    move-object v2, v3

    goto :goto_88

    :cond_87
    move-object v2, v4

    :goto_88
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->UserModified:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v3, v4

    :goto_9b
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
