.class public Lcom/android/fileexplorer/dao/scan/BlackDirInfo;
.super Ljava/lang/Object;
.source "BlackDirInfo.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private dirId:Ljava/lang/Long;

.field private dirName:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirId:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDirId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->state:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->setDirId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->setDirName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->setState(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public setDirId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirId:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setDirName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->dirName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->state:Ljava/lang/String;

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
    sget-object v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getDirName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfoDao$Properties;->State:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;->getState()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method
