.class public Lcom/android/fileexplorer/dao/file/AppTag;
.super Ljava/lang/Object;
.source "AppTag.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;
.implements Ljava/io/Serializable;


# instance fields
.field private appIcon:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private fileCount:I

.field private id:Ljava/lang/Long;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/AppTag;->packageName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appIcon:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/android/fileexplorer/dao/file/AppTag;->fileCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    const/4 v0, 0x1

    .line 6
    if-ne p0, p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    instance-of v1, p1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 11
    if-eqz v1, :cond_1e

    .line 13
    move-object v1, p1

    .line 14
    check-cast v1, Lcom/android/fileexplorer/dao/file/AppTag;

    .line 16
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    return v0

    .line 31
    :cond_1e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public getAppIcon()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appIcon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->fileCount:I

    .line 3
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->id:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->packageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->packageName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/AppTag;->packageName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    const-string v1, "Missing necessary parameters packageName"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setPackageName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppName(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/AppTag;->setAppIcon(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    .line 47
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/AppTag;->setFileCount(I)V

    .line 60
    return-void
.end method

.method public setAppIcon(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appIcon:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->appName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->fileCount:I

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->id:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/AppTag;->packageName:Ljava/lang/String;

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
    sget-object v1, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->AppIcon:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppIcon()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/android/fileexplorer/dao/file/AppTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    .line 52
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/AppTag;->getFileCount()I

    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    return-object v0
.end method
