.class public Lcom/android/fileexplorer/view/PathGallery;
.super Landroid/widget/LinearLayout;
.source "PathGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;,
        Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "galley_TAG_PathGallery"


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public mAdapterPathSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field public mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

.field private mEntryPath:Ljava/lang/String;

.field private mFirstArrow:Landroid/widget/ImageView;

.field private mFirstView:Landroid/widget/TextView;

.field public mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

.field private mPathSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mRoot:Lcom/android/fileexplorer/model/PathSegment;

.field private mTvBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mViewTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    return-object p0
.end method

.method private initFirstPathView()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    if-eqz v0, :cond_40

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 7
    if-nez v1, :cond_9

    .line 9
    goto :goto_40

    .line 10
    :cond_9
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x8

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1f

    .line 30
    move v1, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v1, v3

    .line 33
    :goto_20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstArrow:Landroid/widget/ImageView;

    .line 38
    if-eqz v0, :cond_36

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 42
    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_32

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v2, v3

    .line 52
    :goto_33
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 57
    new-instance v1, Lcom/android/fileexplorer/view/PathGallery$2;

    .line 59
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PathGallery$2;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method private parsePathSegments(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v2, p1, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 9
    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v3, v3, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_99

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 11
    :goto_49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_60

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_99

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v2, p1, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 14
    :cond_60
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 16
    iget-object v5, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v5, v5, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 18
    :cond_7b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 19
    iget-object v5, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v6, v2, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 20
    :cond_8c
    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v5, p1, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_96
    add-int/lit8 v2, v3, 0x1

    goto :goto_49

    .line 21
    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    return-void
.end method

.method private parsePathSegments(Ljava/lang/String;)V
    .registers 8

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "/"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v1, p1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 30
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_6c

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 32
    :goto_3b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_56

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6c

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 35
    :cond_56
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v5, v1, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_3b

    .line 38
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    return-void
.end method

.method private parsePathSegments(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/PathSegment;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private refreshAdapter()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_14

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "refreshAdapter mAdapterPathSegments.size = "

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    const-string v2, "galley_TAG_PathGallery"

    .line 56
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 64
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 74
    move-result v0

    .line 75
    const v1, 0x7f06004e

    .line 78
    const v2, 0x7f0604ee

    .line 81
    if-eqz v0, :cond_7e

    .line 83
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_60

    .line 93
    const v3, 0x7f060032

    .line 96
    goto :goto_63

    .line 97
    :cond_60
    const v3, 0x7f060553

    .line 100
    :goto_63
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 103
    move-result v3

    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 109
    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_75

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    move v1, v2

    .line 119
    :goto_76
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    goto :goto_a9

    .line 127
    :cond_7e
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 129
    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_8c

    .line 137
    const v3, 0x7f060560

    .line 140
    goto :goto_8f

    .line 141
    :cond_8c
    const v3, 0x7f06055f

    .line 144
    :goto_8f
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 147
    move-result v3

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 153
    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_a1

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move v1, v2

    .line 163
    :goto_a2
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 170
    :goto_a9
    new-instance v0, Lcom/android/fileexplorer/view/PathGallery$3;

    .line 172
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/PathGallery$3;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    .line 175
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method


# virtual methods
.method public changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/lang/String;)V

    .line 14
    goto :goto_52

    .line 15
    :cond_e
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_27

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_52

    .line 40
    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4b

    .line 53
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/android/fileexplorer/model/PathSegment;

    .line 59
    if-eqz v1, :cond_3f

    .line 61
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 64
    :cond_3f
    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 66
    iget-object v3, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2e

    .line 74
    const/4 v1, 0x1

    .line 75
    goto :goto_2e

    .line 76
    :cond_4b
    if-nez v1, :cond_52

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    .line 86
    return-void
.end method

.method public clearCurrentScroll()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 10
    iput v1, v0, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 12
    :cond_b
    return-void
.end method

.method public forceChangeToPath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 9
    return-void
.end method

.method public getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 25
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
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 13
    return-object v0
.end method

.method public getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_18

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x2

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 24
    return-object v0

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getRoot()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 3
    return-object v0
.end method

.method public initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePathGalleyAdapter;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePathGalleyAdapter;-><init>(Ljava/util/List;)V

    .line 8
    const/16 v1, 0x12

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 17
    new-instance v1, Lcom/android/fileexplorer/view/PathGallery$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PathGallery$1;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 25
    return-object v0
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 7
    iget-object p1, p2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    .line 9
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    return-void
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 2
    iput-object p2, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

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
    if-eqz p1, :cond_21

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_21

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 19
    if-eqz v0, :cond_18

    .line 21
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    .line 25
    :cond_18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/util/ArrayList;)V

    .line 31
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    .line 34
    :cond_21
    :goto_21
    return-void
.end method

.method public isRoot()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_1e

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    .line 22
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_35

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    return v1

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    return v0
.end method

.method public onFinishInflate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0367

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag(Z)V

    .line 19
    const v0, 0x7f0a0192

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0a030b

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstArrow:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 49
    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 51
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 63
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 70
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 76
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    return-void
.end method

.method public rememberCurrentScroll(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    iput p1, v0, Lcom/android/fileexplorer/model/PathSegment;->position:I

    .line 9
    iput p2, v0, Lcom/android/fileexplorer/model/PathSegment;->top:I

    .line 11
    :cond_a
    return-void
.end method

.method public setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    return-void
.end method

.method public setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    return-void
.end method

.method public setViewTag(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "setViewTag tag = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "galley_TAG_PathGallery"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mViewTag:Ljava/lang/String;

    .line 25
    return-void
.end method
