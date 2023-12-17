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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PathGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/model/PathSegment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/PathGallery;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    return-object p0
.end method

.method private initFirstPathView()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    goto :goto_40

    :cond_9
    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_36
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/fileexplorer/view/PathGallery$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PathGallery$2;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private parsePathSegments(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v2, p1, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v3, v3, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_99

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_99

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v2, p1, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_60
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v5, v5, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_7b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8c

    iget-object v5, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v6, v2, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_96

    :cond_8c
    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v5, p1, v4}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_96
    add-int/lit8 v2, v3, 0x1

    goto :goto_49

    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a8

    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    return-void
.end method

.method private parsePathSegments(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v1, p1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_6c

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_3b
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6c

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_56
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/fileexplorer/model/PathSegment;

    invoke-direct {v5, v1, v3}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_3b

    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7b

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private refreshAdapter()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAdapter mAdapterPathSegments.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "galley_TAG_PathGallery"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f06004e

    const v2, 0x7f0604ee

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_60

    const v3, 0x7f060032

    goto :goto_63

    :cond_60
    const v3, 0x7f060553

    :goto_63
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_76

    :cond_75
    move v1, v2

    :goto_76
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_a9

    :cond_7e
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8c

    const v3, 0x7f060560

    goto :goto_8f

    :cond_8c
    const v3, 0x7f06055f

    :goto_8f
    invoke-static {v3}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a1

    goto :goto_a2

    :cond_a1
    move v1, v2

    :goto_a2
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_a9
    new-instance v0, Lcom/android/fileexplorer/view/PathGallery$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/PathGallery$3;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/lang/String;)V

    goto :goto_52

    :cond_e
    iget-object v0, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, v1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/PathSegment;

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_3f
    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_2e

    :cond_4b
    if-nez v1, :cond_52

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    return-void
.end method

.method public clearCurrentScroll()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/fileexplorer/model/PathSegment;->position:I

    iput v1, v0, Lcom/android/fileexplorer/model/PathSegment;->top:I

    :cond_b
    return-void
.end method

.method public forceChangeToPath(Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->changeToPath(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method

.method public getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreviousPathSegment()Lcom/android/fileexplorer/model/PathSegment;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lcom/android/fileexplorer/model/PathSegment;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    return-object v0
.end method

.method public initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePathGalleyAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapterPathSegments:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FilePathGalleyAdapter;-><init>(Ljava/util/List;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileSimpleAdapter;->setViewType(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v1, Lcom/android/fileexplorer/view/PathGallery$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/PathGallery$1;-><init>(Lcom/android/fileexplorer/view/PathGallery;)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileRecyclerAdapter;->setOnItemClickListener(Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    return-object v0
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Lcom/android/fileexplorer/model/PathSegment;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object p1, p2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Lcom/android/fileexplorer/model/PathSegment;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    return-void
.end method

.method public initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iput-object p2, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/lang/String;)V

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

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_21

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/PathSegment;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    :cond_18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->initFirstPathView()V

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PathGallery;->parsePathSegments(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/PathGallery;->refreshAdapter()V

    :cond_21
    :goto_21
    return-void
.end method

.method public isRoot()Z
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRoot:Lcom/android/fileexplorer/model/PathSegment;

    iget-object v0, v0, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mEntryPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/fileexplorer/model/PathSegment;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    return v1

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032ef1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->canDrag(Z)V

    const v0, 0x7f032c04

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    const v0, 0x7f032e9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mFirstView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mTvBackground:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/LinearLayoutManagerFE;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/PathGallery;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->initAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/view/PathGallery;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public rememberCurrentScroll(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PathGallery;->getCurrentSegment()Lcom/android/fileexplorer/model/PathSegment;

    move-result-object v0

    if-eqz v0, :cond_a

    iput p1, v0, Lcom/android/fileexplorer/model/PathSegment;->position:I

    iput p2, v0, Lcom/android/fileexplorer/model/PathSegment;->top:I

    :cond_a
    return-void
.end method

.method public setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mCloudPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$ICloudPathItemClickListener;

    return-void
.end method

.method public setPathItemClickListener(Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mPathItemClickListener:Lcom/android/fileexplorer/view/PathGallery$IPathItemClickListener;

    return-void
.end method

.method public setViewTag(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewTag tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "galley_TAG_PathGallery"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/PathGallery;->mViewTag:Ljava/lang/String;

    return-void
.end method
