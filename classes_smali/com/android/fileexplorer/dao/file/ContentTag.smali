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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

    iput p3, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    return-void
.end method


# virtual methods
.method public getFileCount()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/ContentTag;->setId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->TagName:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/ContentTag;->setTagName(Ljava/lang/String;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    return-void
.end method

.method public setFileCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->fileCount:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->id:Ljava/lang/Long;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/ContentTag;->tagName:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->TagName:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/ContentTagDao$Properties;->FileCount:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
