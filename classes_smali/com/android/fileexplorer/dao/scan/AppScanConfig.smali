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
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/dao/scan/AppScanConfig;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    .line 4
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 13

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    .line 16
    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    .line 17
    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    .line 19
    iput-object p5, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    .line 23
    iput-object p9, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    .line 24
    iput-object p10, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    .line 25
    iput-object p11, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    .line 26
    iput-object p12, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAppDirPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppDirTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getDirId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDirType()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public getDirectName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNotification()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    .line 3
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSubDirFlag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSubDirName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUserModified()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppId(Ljava/lang/Long;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirName(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirType:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirType(Ljava/lang/Integer;)V

    .line 45
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirName:Lorg/greenrobot/greendao/Property;

    .line 47
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirName(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirFlag:Lorg/greenrobot/greendao/Property;

    .line 58
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setSubDirFlag(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirectName:Lorg/greenrobot/greendao/Property;

    .line 69
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setDirectName(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirTag:Lorg/greenrobot/greendao/Property;

    .line 80
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirTag(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    .line 91
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setState(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirPath:Lorg/greenrobot/greendao/Property;

    .line 102
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setAppDirPath(Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->Notification:Lorg/greenrobot/greendao/Property;

    .line 113
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x1

    .line 124
    const/4 v2, 0x0

    .line 125
    if-eqz v0, :cond_80

    .line 127
    move v0, v1

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v0, v2

    .line 130
    :goto_81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setNotification(Ljava/lang/Boolean;)V

    .line 137
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->UserModified:Lorg/greenrobot/greendao/Property;

    .line 139
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_97

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    move v1, v2

    .line 153
    :goto_98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->setUserModified(Ljava/lang/Boolean;)V

    .line 160
    return-void
.end method

.method public setAppDirPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirPath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppDirTag(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appDirTag:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->appId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setDirId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setDirName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDirType(Ljava/lang/Integer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->dirType:Ljava/lang/Integer;

    .line 3
    return-void
.end method

.method public setDirectName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->directName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNotification(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->notification:Ljava/lang/Boolean;

    .line 3
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->state:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSubDirFlag(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirFlag:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSubDirName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->subDirName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setUserModified(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->userModified:Ljava/lang/Boolean;

    .line 3
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppId()Ljava/lang/Long;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirType:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirType()Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirName:Lorg/greenrobot/greendao/Property;

    .line 52
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirName()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->SubDirFlag:Lorg/greenrobot/greendao/Property;

    .line 63
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getSubDirFlag()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->DirectName:Lorg/greenrobot/greendao/Property;

    .line 74
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getDirectName()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirTag:Lorg/greenrobot/greendao/Property;

    .line 85
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirTag()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    .line 96
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getState()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->AppDirPath:Lorg/greenrobot/greendao/Property;

    .line 107
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getAppDirPath()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->Notification:Lorg/greenrobot/greendao/Property;

    .line 118
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getNotification()Ljava/lang/Boolean;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    move-result v2

    .line 128
    const-string v3, "1"

    .line 130
    const-string v4, "0"

    .line 132
    if-eqz v2, :cond_87

    .line 134
    move-object v2, v3

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move-object v2, v4

    .line 137
    :goto_88
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppScanConfigDao$Properties;->UserModified:Lorg/greenrobot/greendao/Property;

    .line 142
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppScanConfig;->getUserModified()Ljava/lang/Boolean;

    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9a

    .line 154
    goto :goto_9b

    .line 155
    :cond_9a
    move-object v3, v4

    .line 156
    :goto_9b
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object v0
.end method
