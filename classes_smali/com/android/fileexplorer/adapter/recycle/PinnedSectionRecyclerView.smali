.class public Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;
.super Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;
.source "PinnedSectionRecyclerView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;,
        Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;,
        Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinnedSectionRecyclerView"


# instance fields
.field private mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

.field private mEnablePanned:Z

.field private mFirstVisiblePosition:I

.field private mObserver:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;

.field private mParentView:Landroid/view/ViewGroup;

.field private mPinnedView:Landroid/view/View;

.field private mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field private mPinnedViewPosition:I

.field private mVHFactory:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mFirstVisiblePosition:I

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mVHFactory:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mObserver:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateNewPinnedViewInfo()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->recreatePinnedViewInfo()V

    return-void
.end method

.method private attachPinnedView(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mVHFactory:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->getViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-ne v1, v0, :cond_12

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void

    :cond_12
    const-string v1, "need attach pinnedView real position = "

    const-string v2, "PinnedSectionRecyclerView"

    invoke-static {v1, p1, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need attach pinnedView addView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private detachPinnedView()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_30

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v0, "PinnedSectionRecyclerView"

    const-string v1, "detachPinnedView"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v1, "detachPinnedView1"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    :cond_30
    :goto_30
    return-void
.end method

.method private getNextPinnedView()Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_28

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v3

    instance-of v4, v3, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    if-eqz v4, :cond_25

    move-object v4, v3

    check-cast v4, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    invoke-interface {v4}, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;->isPinnedView()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v3

    iget v4, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    if-le v3, v4, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private recreatePinnedViewInfo()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    return-void

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCurrentPinnedViewInfo()V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->getNextPinnedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    if-nez v1, :cond_b

    goto :goto_20

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_20

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_20
    :goto_20
    return-void
.end method

.method private updateNewPinnedViewInfo()V
    .registers 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    return-void

    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_71

    :cond_1d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v1

    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNewPinnedViewInfo: firstVisibleView is null. firstVisiblePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PinnedSectionRecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    instance-of v2, v1, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    const/4 v3, -0x1

    if-eqz v2, :cond_51

    move-object v2, v1

    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    invoke-interface {v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;->getPinnedPosition()I

    move-result v2

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    if-ne v2, v3, :cond_55

    return-void

    :cond_55
    if-ne v2, v0, :cond_62

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_64

    :cond_62
    if-le v0, v2, :cond_68

    :cond_64
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->attachPinnedView(I)V

    goto :goto_70

    :cond_68
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_70
    return-void

    :cond_71
    :goto_71
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    return-void
.end method


# virtual methods
.method public onScrolled(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onScrolled(II)V

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateNewPinnedViewInfo()V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateCurrentPinnedViewInfo()V

    return-void
.end method

.method public onStart(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onStart(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onStop(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onUpdate(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;ZF)V

    :cond_9
    return-void
.end method

.method public setActionModeAnimListener(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    return-void
.end method

.method public setEnablePanned(Z)V
    .registers 2

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    :cond_5
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    return-void
.end method

.method public setPinnedParent(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public updatePinnedView(IZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    const-string v1, "PinnedSectionRecyclerView"

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_45

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    if-eqz v0, :cond_3f

    if-nez p2, :cond_1c

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    if-eq p1, p2, :cond_1c

    goto :goto_3f

    :cond_1c
    const-string p2, "updatePinnedView1 sectionPosition = "

    invoke-static {p2, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    if-eqz p2, :cond_3e

    move-object p2, p1

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    move-object v0, p1

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isActionMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isPendingActionModeAnim()Z

    move-result v2

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    :cond_3e
    return-void

    :cond_3f
    :goto_3f
    const-string p1, "updatePinnedView , is null or not current, return "

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_45
    :goto_45
    const-string p1, "updatePinnedView, not enablePanned, or adapter is null, return"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
