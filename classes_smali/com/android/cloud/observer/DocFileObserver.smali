.class public Lcom/android/cloud/observer/DocFileObserver;
.super Landroid/os/FileObserver;
.source "DocFileObserver.java"


# static fields
.field private static final MASK:I


# instance fields
.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mCloudFileId:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mStartFromSearch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/observer/DocFileObserver;->MASK:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const/16 v0, 0x8

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/cloud/observer/DocFileObserver;->mCloudFileId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/cloud/observer/DocFileObserver;->mStartFromSearch:Z

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isStartFromSearch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mStartFromSearch:Z

    return v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 6

    const/16 v0, 0xfff

    and-int/2addr p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTest, 文件操作___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MiDrive_LOG"

    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    if-nez p2, :cond_1e

    return-void

    :cond_1e
    const/16 p2, 0x8

    if-eq p1, p2, :cond_3d

    if-eq p1, v0, :cond_25

    goto :goto_63

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "__4095全部操作"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_3d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mCloudFileId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "__8文件写入或编辑后关闭"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method public stopWatching()V
    .registers 3

    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    const-string v0, "stopWatching: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocTest"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    return-void
.end method
