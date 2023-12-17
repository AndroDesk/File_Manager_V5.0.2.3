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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/cloud/fragment/CloudFileFragment;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    iput-object p3, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mRootView:Landroid/view/View;

    const p1, 0x102000a

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mRootView:Landroid/view/View;

    const p2, 0x7f032f5c

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mNavigationBar:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->setupPathGallery()V

    return-void
.end method

.method private createPathGallery(Landroid/content/Context;)Lcom/android/fileexplorer/view/PathGallery;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/view/PathGallery;

    invoke-direct {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method private setupPathGallery()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mNavigationBar:Landroid/view/View;

    const v1, 0x7f032e9a

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/PathGallery;

    iput-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/view/PathGallery;->setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;)V

    goto :goto_1f

    :cond_17
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->createPathGallery(Landroid/content/Context;)Lcom/android/fileexplorer/view/PathGallery;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    :goto_1f
    return-void
.end method


# virtual methods
.method public changePath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method

.method public clearCurrentScroll()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->clearCurrentScroll()V

    :cond_c
    :goto_c
    return-void
.end method

.method public doPickCancel(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

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

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getPathSegments()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRootPath()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getRoot()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    return-object v0
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPath path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudPathGalleryHelper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V

    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const-string p2, "First"

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->initPathBySegments(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    const-string v0, "First"

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/PathGallery;->setViewTag(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public isRootPath()Z
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public onBackPressed()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->isRootPath()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->getPreviousPath()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    const/4 v0, 0x1

    return v0

    :cond_13
    return v1
.end method

.method public onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->rememberCurrentScroll()V

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_a
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-le v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onPathChange(Ljava/lang/String;)V

    goto :goto_29

    :cond_22
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFragment:Lcom/android/cloud/fragment/CloudFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/cloud/fragment/CloudFileFragment;->onPathChange(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public onPathItemClickListener(Lcom/android/fileexplorer/model/PathSegment;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public rememberCurrentScroll()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    if-nez v1, :cond_9

    goto :goto_26

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_15
    iget-object v0, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mPathGallery:Lcom/android/fileexplorer/view/PathGallery;

    iget-object v2, p0, Lcom/android/cloud/util/helper/CloudPathGalleryHelper;->mFileListView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/fileexplorer/view/PathGallery;->rememberCurrentScroll(II)V

    :cond_26
    :goto_26
    return-void
.end method
