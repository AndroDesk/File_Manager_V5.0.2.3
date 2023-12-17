.class public Lcom/android/fileexplorer/dao/file/WidgetPinFile;
.super Ljava/lang/Object;
.source "WidgetPinFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
        ">;"
    }
.end annotation


# instance fields
.field private addTime:Ljava/lang/Long;

.field private fileAbsolutePath:Ljava/lang/String;

.field private fileCategoryType:Ljava/lang/Integer;

.field private fileId:Ljava/lang/Long;

.field private fileName:Ljava/lang/String;

.field private fileSize:Ljava/lang/Long;

.field private id:Ljava/lang/Long;

.field private modifyTime:Ljava/lang/Long;


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

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileAbsolutePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->modifyTime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileCategoryType:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileSize:Ljava/lang/Long;

    iput-object p7, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->addTime:Ljava/lang/Long;

    iput-object p8, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)I
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->addTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->addTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->compareTo(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    :cond_11
    check-cast p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileAbsolutePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileAbsolutePath:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getAddTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->addTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileAbsolutePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCategoryType()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileCategoryType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFileId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->modifyTime:Ljava/lang/Long;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->addTime:Ljava/lang/Long;

    return-void
.end method

.method public setFileAbsolutePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public setFileCategoryType(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileCategoryType:Ljava/lang/Integer;

    return-void
.end method

.method public setFileId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileId:Ljava/lang/Long;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->id:Ljava/lang/Long;

    return-void
.end method

.method public setModifyTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->modifyTime:Ljava/lang/Long;

    return-void
.end method
