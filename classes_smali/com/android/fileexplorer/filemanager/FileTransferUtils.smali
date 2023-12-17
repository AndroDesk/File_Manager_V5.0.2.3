.class public Lcom/android/fileexplorer/filemanager/FileTransferUtils;
.super Ljava/lang/Object;
.source "FileTransferUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileTransferUtils"


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

.method public static copyFromMTPUri()V
    .registers 0

    return-void
.end method

.method public static copyFromSMB()V
    .registers 0

    return-void
.end method

.method public static createParams(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;ZI)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p0

    return-object p0
.end method

.method public static createParams(Lcom/android/fileexplorer/model/FileInfo;II)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileTransferUtils;->createParams(Lcom/android/fileexplorer/model/FileInfo;ZII)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    move-result-object p0

    return-object p0
.end method

.method public static createParams(Lcom/android/fileexplorer/model/FileInfo;ZI)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setDestParentFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setSourceFrom(I)V

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setForceOverWrite(Z)V

    return-object v0
.end method

.method public static createParams(Lcom/android/fileexplorer/model/FileInfo;ZII)Lcom/android/fileexplorer/filemanager/FileTransferParams;
    .registers 5
    .param p2  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    new-instance v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    invoke-direct {v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setDestParentFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setSourceFrom(I)V

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setForceOverWrite(Z)V

    invoke-virtual {v0, p3}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setDestType(I)V

    return-object v0
.end method
