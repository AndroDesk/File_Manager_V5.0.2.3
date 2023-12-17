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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 5
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mFirstVisiblePosition:I

    .line 6
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mVHFactory:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 8
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mObserver:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$DataChangeObserver;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateNewPinnedViewInfo()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->recreatePinnedViewInfo()V

    .line 4
    return-void
.end method

.method private attachPinnedView(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mVHFactory:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ViewHolderFactory;->getViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 9
    if-ne v1, v0, :cond_12

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 18
    return-void

    .line 19
    :cond_12
    const-string v1, "need attach pinnedView real position = "

    .line 21
    const-string v2, "PinnedSectionRecyclerView"

    .line 23
    invoke-static {v1, p1, v2}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 36
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 38
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 40
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, "need attach pinnedView addView = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mParentView:Landroid/view/ViewGroup;

    .line 70
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private detachPinnedView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 3
    if-eqz v0, :cond_30

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 7
    if-nez v0, :cond_9

    .line 9
    goto :goto_30

    .line 10
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_30

    .line 16
    const-string v0, "PinnedSectionRecyclerView"

    .line 18
    const-string v1, "detachPinnedView"

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    const-string v1, "detachPinnedView1"

    .line 38
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 46
    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 49
    :cond_30
    :goto_30
    return-void
.end method

.method private getNextPinnedView()Landroid/view/View;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_28

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 15
    move-result-object v3

    .line 16
    instance-of v4, v3, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    .line 18
    if-eqz v4, :cond_25

    .line 20
    move-object v4, v3

    .line 21
    check-cast v4, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    .line 23
    invoke-interface {v4}, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;->isPinnedView()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_25

    .line 29
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 32
    move-result v3

    .line 33
    iget v4, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 35
    if-le v3, v4, :cond_25

    .line 37
    return-object v2

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_5

    .line 41
    :cond_28
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method

.method private recreatePinnedViewInfo()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 8
    return-void

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method private updateCurrentPinnedViewInfo()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->getNextPinnedView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_20

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_20

    .line 12
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    cmpg-float v2, v0, v1

    .line 25
    if-gez v2, :cond_20

    .line 27
    sub-float/2addr v0, v1

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method private updateNewPinnedViewInfo()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    if-nez v0, :cond_c

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_71

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 29
    goto :goto_71

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_44

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v2, "updateNewPinnedViewInfo: firstVisibleView is null. firstVisiblePosition = "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    const-string v1, "PinnedSectionRecyclerView"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 69
    :cond_44
    instance-of v2, v1, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    .line 71
    const/4 v3, -0x1

    .line 72
    if-eqz v2, :cond_51

    .line 74
    move-object v2, v1

    .line 75
    check-cast v2, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;

    .line 77
    invoke-interface {v2}, Lcom/android/fileexplorer/adapter/recycle/listener/IPinnedCallback;->getPinnedPosition()I

    .line 80
    move-result v2

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v2, v3

    .line 83
    :goto_52
    if-ne v2, v3, :cond_55

    .line 85
    return-void

    .line 86
    :cond_55
    if-ne v2, v0, :cond_62

    .line 88
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 93
    move-result v1

    .line 94
    const/4 v3, 0x0

    .line 95
    cmpg-float v1, v1, v3

    .line 97
    if-ltz v1, :cond_64

    .line 99
    :cond_62
    if-le v0, v2, :cond_68

    .line 101
    :cond_64
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->attachPinnedView(I)V

    .line 104
    goto :goto_70

    .line 105
    :cond_68
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$2;

    .line 107
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;)V

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    :goto_70
    return-void

    .line 114
    :cond_71
    :goto_71
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 117
    return-void
.end method


# virtual methods
.method public onScrolled(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->onScrolled(II)V

    .line 4
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 6
    if-nez p1, :cond_b

    .line 8
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateNewPinnedViewInfo()V

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->updateCurrentPinnedViewInfo()V

    .line 18
    return-void
.end method

.method public onStart(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 7
    invoke-interface {v0, p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onStart(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public onStop(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 7
    invoke-interface {v0, p0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onStop(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public onUpdate(ZF)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 7
    invoke-interface {v0, p0, v1, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;->onUpdate(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;Landroid/view/View;ZF)V

    .line 10
    :cond_9
    return-void
.end method

.method public setActionModeAnimListener(Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mActionModeAnimListener:Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView$ActionModeAnimListener;

    .line 3
    return-void
.end method

.method public setEnablePanned(Z)V
    .registers 2

    .line 1
    if-nez p1, :cond_5

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->detachPinnedView()V

    .line 6
    :cond_5
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 8
    return-void
.end method

.method public setPinnedParent(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mParentView:Landroid/view/ViewGroup;

    .line 3
    return-void
.end method

.method public updatePinnedView(IZ)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mEnablePanned:Z

    .line 3
    const-string v1, "PinnedSectionRecyclerView"

    .line 5
    if-eqz v0, :cond_45

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_45

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 16
    if-eqz v0, :cond_3f

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedView:Landroid/view/View;

    .line 20
    if-eqz v0, :cond_3f

    .line 22
    if-nez p2, :cond_1c

    .line 24
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewPosition:I

    .line 26
    if-eq p1, p2, :cond_1c

    .line 28
    goto :goto_3f

    .line 29
    :cond_1c
    const-string p2, "updatePinnedView1 sectionPosition = "

    .line 31
    invoke-static {p2, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;->mPinnedViewHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 36
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    .line 38
    if-eqz p2, :cond_3e

    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    .line 43
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;

    .line 46
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isActionMode()Z

    .line 55
    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;->isPendingActionModeAnim()Z

    .line 59
    move-result v2

    .line 60
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 63
    :cond_3e
    return-void

    .line 64
    :cond_3f
    :goto_3f
    const-string p1, "updatePinnedView , is null or not current, return "

    .line 66
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 70
    :cond_45
    :goto_45
    const-string p1, "updatePinnedView, not enablePanned, or adapter is null, return"

    .line 72
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
