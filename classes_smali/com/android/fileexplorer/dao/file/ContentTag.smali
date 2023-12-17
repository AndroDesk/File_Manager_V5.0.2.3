.class public Lcom/android/fileexplorer/dao/file/ContentTag;
.super Ljava/lang/Object;
.source "ContentTag.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private fileCount:I

.field private id:Ljava/lang/Long;

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    return-void
.end method


# virtual methods
.method public getFileCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    .line 3
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/ContentTag;->setId(Ljava/lang/Long;)V

    .line 12
    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->TagName:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/ContentTag;->setTagName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    .line 25
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    .line 38
    return-void
.end method

.method public setFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    .line 3
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

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
    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getId()Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->TagName:Lorg/greenrobot/greendao/Property;

    .line 19
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getTagName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    .line 30
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    return-object v0
.end method
