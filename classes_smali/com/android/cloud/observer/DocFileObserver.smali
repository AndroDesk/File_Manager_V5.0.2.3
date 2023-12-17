.class public Lcom/android/cloud/observer/DocFileObserver;
.super Landroid/os/FileObserver;
.source "DocFileObserver.java"


# static fields
.field private static final MASK:I = 0x8


# instance fields
.field private mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field private mCloudFileId:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mStartFromSearch:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p1, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 8
    iput-object p2, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/cloud/observer/DocFileObserver;->mCloudFileId:Ljava/lang/String;

    .line 12
    iput-boolean p4, p0, Lcom/android/cloud/observer/DocFileObserver;->mStartFromSearch:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isStartFromSearch()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mStartFromSearch:Z

    .line 3
    return v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .line 1
    const/16 v0, 0xfff

    .line 3
    and-int/2addr p1, v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "DocTest, 文件操作___"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    const-string v1, "MiDrive_LOG"

    .line 23
    invoke-static {v1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 28
    if-nez p2, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    const/16 p2, 0x8

    .line 33
    if-eq p1, p2, :cond_3d

    .line 35
    if-eq p1, v0, :cond_25

    .line 37
    goto :goto_63

    .line 38
    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string p1, "__4095全部操作"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    goto :goto_63

    .line 62
    :cond_3d
    new-instance p2, Ljava/util/ArrayList;

    .line 64
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mCloudFileId:Ljava/lang/String;

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 74
    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestModify(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, "__8文件写入或编辑后关闭"

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_63
    return-void
.end method

.method public stopWatching()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 4
    const-string v0, "stopWatching: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/cloud/observer/DocFileObserver;->mFilePath:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DocTest"

    .line 21
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/cloud/observer/DocFileObserver;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 27
    return-void
.end method
