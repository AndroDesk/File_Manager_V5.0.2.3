.class public abstract Landroidx/recyclerview/widget/RecyclerView$b0;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b0"
.end annotation


# static fields
.field public static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field public static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field public static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field public static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field public static final FLAG_BOUND:I = 0x1

.field public static final FLAG_IGNORE:I = 0x80

.field public static final FLAG_INVALID:I = 0x4

.field public static final FLAG_MOVED:I = 0x800

.field public static final FLAG_NOT_RECYCLABLE:I = 0x10

.field public static final FLAG_REMOVED:I = 0x8

.field public static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field public static final FLAG_TMP_DETACHED:I = 0x100

.field public static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field public mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field public mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field public mItemId:J

.field public mItemViewType:I

.field public mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public mOldPosition:I

.field public mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingAccessibilityState:I

.field public mPosition:I

.field public mPreLayoutPosition:I

.field public mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

.field public mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$b0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 7
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 9
    const-wide/16 v1, -0x1

    .line 11
    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemId:J

    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemViewType:I

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 22
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mUnmodifiedPayloads:Ljava/util/List;

    .line 26
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 29
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 31
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 33
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 35
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 37
    if-eqz p1, :cond_29

    .line 39
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 41
    return-void

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string v0, "itemView may not be null"

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method private createPayloadsIfNeeded()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 3
    if-nez v0, :cond_11

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mUnmodifiedPayloads:Ljava/util/List;

    .line 18
    :cond_11
    return-void
.end method


# virtual methods
.method public addChangePayload(Ljava/lang/Object;)V
    .registers 4

    .line 1
    const/16 v0, 0x400

    .line 3
    if-nez p1, :cond_8

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 8
    goto :goto_15

    .line 9
    :cond_8
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 11
    and-int/2addr v0, v1

    .line 12
    if-nez v0, :cond_15

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->createPayloadsIfNeeded()V

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public addFlags(I)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 6
    return-void
.end method

.method public clearOldPosition()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 6
    return-void
.end method

.method public clearPayload()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_7
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 10
    and-int/lit16 v0, v0, -0x401

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 14
    return-void
.end method

.method public clearReturnedFromScrapFlag()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 7
    return-void
.end method

.method public clearTmpDetachFlag()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 7
    return-void
.end method

.method public doesTransientStatePreventRecycling()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-nez v0, :cond_12

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {v0}, Lm0/g0$d;->i(Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public flagRemovedAndOffsetPosition(IIZ)V
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->addFlags(I)V

    .line 6
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$b0;->offsetPosition(IZ)V

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 11
    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getAdapterPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_12

    .line 18
    return v1

    .line 19
    :cond_12
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$b0;)I

    .line 24
    move-result v2

    .line 25
    if-ne v2, v1, :cond_1b

    .line 27
    return v1

    .line 28
    :cond_1b
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)I

    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public final getItemId()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemId:J

    .line 3
    return-wide v0
.end method

.method public final getItemViewType()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemViewType:I

    .line 3
    return v0
.end method

.method public final getLayoutPosition()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 8
    :cond_7
    return v0
.end method

.method public final getOldPosition()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 3
    return v0
.end method

.method public final getPosition()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 8
    :cond_7
    return v0
.end method

.method public getUnmodifiedPayloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, 0x400

    .line 5
    if-nez v0, :cond_17

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPayloads:Ljava/util/List;

    .line 9
    if-eqz v0, :cond_14

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mUnmodifiedPayloads:Ljava/util/List;

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$b0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 23
    return-object v0

    .line 24
    :cond_17
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$b0;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    .line 26
    return-object v0
.end method

.method public hasAnyOfTheFlags(I)Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method public isAdapterPositionUnknown()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public isAttachedToTransitionOverlay()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_14

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    if-eq v0, v1, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public isBound()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isInvalid()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public final isRecyclable()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-nez v0, :cond_12

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {v0}, Lm0/g0$d;->i(Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isScrap()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isTmpDetached()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, 0x100

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isUpdated()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public needsUpdate()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public offsetPosition(IZ)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 10
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 12
    if-ne v0, v1, :cond_11

    .line 14
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 18
    :cond_11
    if-eqz p2, :cond_18

    .line 20
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 25
    :cond_18
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 27
    add-int/2addr p2, p1

    .line 28
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 30
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_30

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$o;

    .line 46
    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    .line 49
    :cond_30
    return-void
.end method

.method public onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8
    goto :goto_12

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {v0}, Lm0/g0$d;->c(Landroid/view/View;)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 19
    :goto_12
    const/4 v0, 0x4

    .line 20
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$b0;I)Z

    .line 23
    return-void
.end method

.method public onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 3
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$b0;I)Z

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 9
    return-void
.end method

.method public resetInternal()V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 4
    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 7
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 9
    const-wide/16 v2, -0x1

    .line 11
    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemId:J

    .line 13
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->clearPayload()V

    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mWasImportantForAccessibilityBeforeHidden:I

    .line 27
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPendingAccessibilityState:I

    .line 29
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 32
    return-void
.end method

.method public saveOldPosition()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 10
    :cond_9
    return-void
.end method

.method public setFlags(II)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    not-int v1, p2

    .line 4
    and-int/2addr v0, v1

    .line 5
    and-int/2addr p1, p2

    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 9
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 4
    if-eqz p1, :cond_7

    .line 6
    sub-int/2addr v1, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    add-int/2addr v1, v0

    .line 9
    :goto_8
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 11
    if-gez v1, :cond_26

    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "View"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_3b

    .line 39
    :cond_26
    if-nez p1, :cond_31

    .line 41
    if-ne v1, v0, :cond_31

    .line 43
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 45
    or-int/lit8 p1, p1, 0x10

    .line 47
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 49
    goto :goto_3b

    .line 50
    :cond_31
    if-eqz p1, :cond_3b

    .line 52
    if-nez v1, :cond_3b

    .line 54
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 56
    and-int/lit8 p1, p1, -0x11

    .line 58
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method public setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$u;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 5
    return-void
.end method

.method public shouldBeKeptAsChild()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public shouldIgnore()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public stopIgnoring()V
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    const-string v0, "ViewHolder"

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "{"

    .line 26
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, " position="

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPosition:I

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " id="

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mItemId:J

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", oldPos="

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mOldPosition:I

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, ", pLpos:"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mPreLayoutPosition:I

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isScrap()Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6e

    .line 94
    const-string v0, " scrap "

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mInChangeScrap:Z

    .line 101
    if-eqz v0, :cond_69

    .line 103
    const-string v0, "[changeScrap]"

    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    const-string v0, "[attachedScrap]"

    .line 108
    :goto_6b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_6e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_79

    .line 117
    const-string v0, " invalid"

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isBound()Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_84

    .line 128
    const-string v0, " unbound"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->needsUpdate()Z

    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_8f

    .line 139
    const-string v0, " update"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_8f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_9a

    .line 150
    const-string v0, " removed"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_9a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_a5

    .line 161
    const-string v0, " ignored"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_a5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isTmpDetached()Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_b0

    .line 172
    const-string v0, " tmpDetached"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_b0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRecyclable()Z

    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_cd

    .line 183
    const-string v0, " not recyclable("

    .line 185
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    move-result-object v0

    .line 189
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mIsRecyclableCount:I

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, ")"

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_cd
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isAdapterPositionUnknown()Z

    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_d8

    .line 212
    const-string v0, " undefined adapter position"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_d8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 222
    move-result-object v0

    .line 223
    if-nez v0, :cond_e5

    .line 225
    const-string v0, " no parent"

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_e5
    const-string v0, "}"

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    return-object v0
.end method

.method public unScrap()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$u;->l(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 6
    return-void
.end method

.method public wasReturnedFromScrap()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->mFlags:I

    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method
