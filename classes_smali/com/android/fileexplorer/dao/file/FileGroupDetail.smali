.class public Lcom/android/fileexplorer/dao/file/FileGroupDetail;
.super Ljava/lang/Object;
.source "FileGroupDetail.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/ContentValuable;


# instance fields
.field private fileGroupId:Ljava/lang/Long;

.field private fileItemId:Ljava/lang/Long;

.field private id:Ljava/lang/Long;


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

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileGroupId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileItemId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getFileGroupId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileGroupId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileItemId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public initFromContentValues(Landroid/content/ContentValues;)V
    .registers 3

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->FileGroupId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileGroupId(Ljava/lang/Long;)V

    sget-object v0, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->FileItemId:Lorg/greenrobot/greendao/Property;

    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->setFileItemId(Ljava/lang/Long;)V

    return-void
.end method

.method public setFileGroupId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileGroupId:Ljava/lang/Long;

    return-void
.end method

.method public setFileItemId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->fileItemId:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->id:Ljava/lang/Long;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .registers 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->FileGroupId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->getFileGroupId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao$Properties;->FileItemId:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileGroupDetail;->getFileItemId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
