.class public Landroidx/recyclerview/widget/RecyclerView$o;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public final mDecorInsets:Landroid/graphics/Rect;

.field public mInsetsDirty:Z

.field public mPendingInvalidate:Z

.field public mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mPendingInvalidate:Z

    return-void
.end method


# virtual methods
.method public getAbsoluteAdapterPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAbsoluteAdapterPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBindingAdapterPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewAdapterPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewLayoutPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getLayoutPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->getPosition()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isItemChanged()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isUpdated()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isItemRemoved()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isRemoved()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isViewInvalid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->isInvalid()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public viewNeedsUpdate()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b0;->needsUpdate()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
