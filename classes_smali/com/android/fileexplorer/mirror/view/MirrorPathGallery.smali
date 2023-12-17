.class public Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;
.super Lcom/android/fileexplorer/view/PathGallery;
.source "MirrorPathGallery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorPathGallery"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    return-object p0
.end method


# virtual methods
.method public initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFilePathGalleyAdapter;-><init>(Ljava/util/List;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileSimpleAdapter;->setViewType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/mirror/view/MirrorPathGallery$1;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPathGallery;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->setOnMirrorItemClickListener(Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;)V

    return-object v0
.end method
