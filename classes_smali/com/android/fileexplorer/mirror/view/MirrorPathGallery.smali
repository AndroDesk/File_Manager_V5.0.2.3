.class public Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;
.super Lcom/android/fileexplorer/view/PathGallery;
.source "MirrorPathGallery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorPathGallery"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;-><init>(Ljava/util/List;)V

    .line 8
    const/16 v1, 0x12

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 17
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    .line 25
    return-object v0
.end method
