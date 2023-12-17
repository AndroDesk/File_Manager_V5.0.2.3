.class public Lcom/android/cloud/util/helper/CloudPathGalleryHelper;
.super Ljava/lang/Object;
.source "CloudPathGalleryHelper.java"

# interfaces
.implements Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CloudPathGalleryHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

.field private mNavigationBar:Landroid/view/View;

.field private mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    .line 8
    iput-object p3, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mRootView:Landroid/view/View;

    .line 10
    const p1, 0x102000a

    .line 13
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 19
    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 21
    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mRootView:Landroid/view/View;

    .line 23
    const p2, 0x7f0a02ca

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mNavigationBar:Landroid/view/View;

    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->setupPathGallery()V

    .line 39
    return-void
.end method

.method private createPathGallery(Landroid/content/Context;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setupPathGallery()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mNavigationBar:Landroid/view/View;

    .line 3
    const v1, 0x7f0a030c

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    .line 12
    iput-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 14
    if-eqz v0, :cond_13

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;)V

    .line 19
    goto :goto_1b

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->createPathGallery(Landroid/content/Context;)Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 28
    :goto_1b
    return-void
.end method


# virtual methods
.method public changePath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 6
    return-void
.end method

.method public clearCurrentScroll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->clearCurrentScroll()V

    .line 13
    :cond_c
    :goto_c
    return-void
.end method

.method public doPickCancel(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    const-string v0, ""

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 14
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPathSegments()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPathSegments()Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getRootPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "initPath path = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "CloudPathGalleryHelper"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 25
    if-eqz v0, :cond_24

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V

    .line 30
    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 32
    const-string p2, "First"

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    .line 37
    :cond_24
    return-void
.end method

.method public initPathBySegments(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->initPathBySegments(Ljava/util/ArrayList;)V

    .line 8
    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 10
    const-string v0, "First"

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    .line 15
    :cond_e
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->isRoot()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    return v0
.end method

.method public onBackPressed()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->isRootPath()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_13
    return v1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->rememberCurrentScroll()V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 11
    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 13
    const/16 v1, 0x2f

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    add-int/2addr v0, v1

    .line 21
    if-le v0, v1, :cond_22

    .line 23
    iget-object v1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    .line 25
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v1, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onPathChange(Ljava/lang/String;)V

    .line 34
    goto :goto_29

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    .line 37
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onPathChange(Ljava/lang/String;)V

    .line 42
    :goto_29
    return-void
.end method

.method public onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1c

    .line 17
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 19
    iget-object v1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 29
    :cond_1c
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public rememberCurrentScroll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    if-eqz v0, :cond_26

    .line 5
    iget-object v1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_26

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 21
    move-result v1

    .line 22
    :goto_15
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    .line 24
    iget-object v2, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/fileexplorer/view/PathGallery;->rememberCurrentScroll(II)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method
