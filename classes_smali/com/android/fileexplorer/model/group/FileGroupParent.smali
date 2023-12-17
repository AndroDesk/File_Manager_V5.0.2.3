.class public Lcom/android/fileexplorer/model/group/FileGroupParent;
.super Lcom/android/fileexplorer/model/group/FileGroupData;
.source "FileGroupParent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/model/group/FileGroupData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public expandable:Z

.field public groupAllCount:I

.field public groupCreateTime:J

.field public isExpanded:Z

.field public mCheckedAll:Z

.field public mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

.field public showFileCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/model/group/FileGroupData;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 12
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/model/group/FileGroupParent;->addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;Z)V

    return-void
.end method

.method public addChild(Lcom/android/fileexplorer/model/group/FileGroupChild;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupChild<",
            "TT;>;Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    .line 4
    :cond_e
    iget v0, p0, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    iput v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2b

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    iput p1, p0, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    :cond_2b
    return-void
.end method
