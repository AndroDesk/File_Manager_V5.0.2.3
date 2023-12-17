.class public Lcom/android/fileexplorer/dao/scan/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appId:Ljava/lang/Long;

.field private appName:Ljava/lang/String;

.field private appTag:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appId:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->packageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appIcon:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppIcon()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appIcon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppTag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appTag:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->packageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setAppId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setAppIcon(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppTag:Lorg/greenrobot/greendao/Property;

    .line 47
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->setAppTag(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appIcon:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppTag(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->appTag:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/AppInfo;->packageName:Ljava/lang/String;

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
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppId:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppIcon()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/dao/scan/AppInfoDao$Properties;->AppTag:Lorg/greenrobot/greendao/Property;

    .line 52
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppTag()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method
