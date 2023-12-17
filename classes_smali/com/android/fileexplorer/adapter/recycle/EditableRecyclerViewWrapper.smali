.class public Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;
.super Ljava/lang/Object;
.source "EditableRecyclerViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;,
        Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ":",
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final START_ACTION_MODE_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "EditableRecyclerViewWrapper"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mCheckedIdStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

.field private final mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mStartActionModeTime:J


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->notifyOffScreenItemsChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Landroid/view/ActionMode;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->notifyOnScreenItemsChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Landroid/view/ActionMode;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;I)V

    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;ZLmiuix/view/EditActionMode;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 4
    return-void
.end method

.method private confirmCheckedPositionsById()V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_85

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Long;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v8

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v7

    .line 45
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 50
    move-result-wide v3

    .line 51
    const-wide/16 v5, -0x1

    .line 53
    cmp-long v5, v3, v5

    .line 55
    const/4 v11, 0x1

    .line 56
    if-nez v5, :cond_3e

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 61
    :cond_3c
    :goto_3c
    move v2, v11

    .line 62
    goto :goto_c

    .line 63
    :cond_3e
    cmp-long v3, v8, v3

    .line 65
    if-eqz v3, :cond_c

    .line 67
    add-int/lit8 v3, v7, -0x14

    .line 69
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result v3

    .line 73
    add-int/lit8 v4, v7, 0x14

    .line 75
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 77
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 80
    move-result v5

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 84
    move-result v4

    .line 85
    :goto_54
    if-ge v3, v4, :cond_72

    .line 87
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 89
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 92
    move-result-wide v5

    .line 93
    cmp-long v5, v8, v5

    .line 95
    if-nez v5, :cond_6f

    .line 97
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object v5

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move v3, v11

    .line 111
    goto :goto_73

    .line 112
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_54

    .line 115
    :cond_72
    move v3, v1

    .line 116
    :goto_73
    if-nez v3, :cond_c

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 121
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 123
    if-eqz v6, :cond_3c

    .line 125
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 127
    if-eqz v5, :cond_3c

    .line 129
    const/4 v10, 0x0

    .line 130
    invoke-interface/range {v5 .. v10}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 133
    goto :goto_3c

    .line 134
    :cond_85
    if-eqz v2, :cond_a4

    .line 136
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 138
    if-eqz v0, :cond_a4

    .line 140
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 145
    move-result v1

    .line 146
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    .line 152
    move-result v0

    .line 153
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 155
    check-cast v1, Lmiuix/view/EditActionMode;

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 160
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 162
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 165
    :cond_a4
    return-void
.end method

.method private getViewByItemId(J)Landroid/view/View;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    .line 21
    move-result-wide v3

    .line 22
    cmp-long v3, v3, p1

    .line 24
    if-nez v3, :cond_1a

    .line 26
    return-object v2

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method private isItemEditable(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method private notifyOffScreenItemsChanged()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 9
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v3, v0, :cond_25

    .line 16
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 24
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_d

    .line 38
    :cond_25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 40
    if-eqz v0, :cond_41

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 45
    move-result v0

    .line 46
    :goto_2d
    if-ge v2, v0, :cond_41

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3e

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 60
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 63
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_2d

    .line 66
    :cond_41
    return-void
.end method

.method private notifyOnScreenItemsChanged()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_38

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 18
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 24
    if-eqz v4, :cond_35

    .line 26
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 28
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 30
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    .line 33
    move-result-wide v5

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    check-cast v3, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 44
    invoke-interface {v3, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isInActionMode()Z

    .line 50
    move-result v2

    .line 51
    invoke-interface {v3, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->notifyActionModeChange(Z)V

    .line 54
    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_7

    .line 57
    :cond_38
    return-void
.end method

.method private setItemChecked(IZZ)V
    .registers 11

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v1, :cond_d

    .line 5
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->isItemCheckable(I)Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_1e

    return-void

    .line 7
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setItemChecked: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditableRecyclerViewWrapper"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eq p2, v0, :cond_c2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemChecked1: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_80

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemChecked2: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 12
    :cond_80
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_89
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of v2, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    if-eqz v2, :cond_96

    .line 14
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-interface {v0, p2, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 15
    :cond_96
    invoke-direct {p0, v4, v5}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->getViewByItemId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a7

    const-string v0, "setItemChecked:1 "

    .line 16
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_af

    :cond_a7
    const-string v2, "setItemChecked:2 position = "

    .line 18
    invoke-static {v2, p1, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-direct {p0, v0, p1, v4, v5}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    :goto_af
    if-nez p3, :cond_c2

    .line 20
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isInActionMode()Z

    move-result p3

    if-eqz p3, :cond_c2

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    if-eqz v1, :cond_c2

    .line 21
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_c2
    return-void
.end method

.method private updateCheckAllButton(ZLmiuix/view/EditActionMode;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    const v0, 0x7f0802e3

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const v0, 0x7f0802e4

    .line 14
    :goto_d
    if-eqz p1, :cond_2c

    .line 16
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_19

    .line 22
    const p1, 0x7f0802ed

    .line 25
    goto :goto_1c

    .line 26
    :cond_19
    const p1, 0x7f0802ee

    .line 29
    :goto_1c
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f11001e

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    goto :goto_48

    .line 45
    :cond_2c
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isNightMode()Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_36

    .line 51
    const p1, 0x7f08032b

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    const p1, 0x7f08032c

    .line 58
    :goto_39
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v1

    .line 66
    const v2, 0x7f11001f

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    :goto_48
    const v2, 0x102001a

    .line 76
    const-string v3, ""

    .line 78
    invoke-interface {p2, v2, v1, v3, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 81
    const p1, 0x1020019

    .line 84
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v1

    .line 92
    const v2, 0x7f1102e9

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-interface {p2, p1, v1, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 102
    return-void
.end method

.method private updateCheckStatus(Landroid/view/ActionMode;I)V
    .registers 6

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    if-nez p2, :cond_15

    .line 11
    const p2, 0x7f11025d

    .line 14
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    goto :goto_2d

    .line 22
    :cond_15
    const v1, 0x7f0f0021

    .line 25
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p2

    .line 37
    aput-object p2, v1, v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method private updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 6
    move-result-object p1

    .line 7
    instance-of p2, p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 9
    if-eqz p2, :cond_37

    .line 11
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 13
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v1, "updateOnScreenCheckedView: checked = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", id = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    const-string p4, "EditableRecyclerViewWrapper"

    .line 48
    invoke-static {p4, p3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    check-cast p1, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;

    .line 53
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/ViewHolderEditableCallback;->onUpdateEditable(Z)Z

    .line 56
    :cond_37
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public finishActionMode()V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mStartActionModeTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x258

    .line 10
    cmp-long v0, v0, v2

    .line 12
    if-gez v0, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 22
    :cond_15
    return-void
.end method

.method public finishActionModeNotTimeInterval()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 8
    :cond_7
    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    return-object v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [J

    .line 14
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2d

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Long;

    .line 37
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v3

    .line 41
    aput-wide v3, v0, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_18

    .line 46
    :cond_2d
    return-object v0
.end method

.method public getCheckedItemIndexs()[I
    .registers 5

    .line 1
    const-string v0, "getCheckedItemIndexs: mCheckedIdStates = "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "EditableRecyclerViewWrapper"

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 35
    move-result v0

    .line 36
    new-array v0, v0, [I

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_45

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v3

    .line 65
    aput v3, v0, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_30

    .line 70
    :cond_45
    return-object v0
.end method

.method public getCheckedItems()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public isAllItemsChecked()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 5
    if-eqz v1, :cond_16

    .line 7
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 9
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->getEditableItemCount()I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public isInActionMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

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

.method public isItemChecked(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isItemIdChecked(J)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setActionModeMenuEnable(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 3
    if-eqz v0, :cond_18

    .line 5
    if-eqz p1, :cond_10

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 12
    move-result p1

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;I)V

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 25
    :cond_18
    :goto_18
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    :cond_10
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    instance-of v0, p1, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 21
    if-eqz v0, :cond_1e

    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 28
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->setCheckItemIds(Ljava/util/HashMap;)V

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 33
    if-eqz v0, :cond_38

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_30

    .line 41
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 48
    goto :goto_38

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    const-string v0, "adapter must has stable id"

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    :cond_38
    :goto_38
    if-eqz p1, :cond_3d

    .line 59
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->confirmCheckedPositionsById()V

    .line 62
    :cond_3d
    return-void
.end method

.method public setAllItemsChecked(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, "setAllItemsChecked: N = "

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", value = "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "EditableRecyclerViewWrapper"

    .line 34
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_25
    if-ge v1, v0, :cond_2e

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v1, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_25

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 51
    if-eqz v1, :cond_3c

    .line 53
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;

    .line 55
    const/4 v1, -0x1

    .line 56
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 58
    invoke-interface {v0, p1, v1, v2}, Lcom/android/fileexplorer/adapter/recycle/adapter/IEditRecyclerViewAdapter;->updateRelatedItemsState(ZILcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V

    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 63
    if-eqz v0, :cond_47

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 67
    if-eqz v1, :cond_47

    .line 69
    invoke-interface {v1, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    .line 72
    :cond_47
    return-void
.end method

.method public setGroupItemsChecked(ZII)V
    .registers 5

    .line 1
    if-le p2, p3, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    :goto_3
    if-gt p2, p3, :cond_c

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p2, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 12
    goto :goto_3

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 15
    if-eqz p1, :cond_2d

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 19
    if-eqz p2, :cond_2d

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 23
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 26
    move-result p2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isAllItemsChecked()Z

    .line 33
    move-result p1

    .line 34
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 36
    check-cast p2, Lmiuix/view/EditActionMode;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->updateCheckAllButton(ZLmiuix/view/EditActionMode;)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 43
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 46
    :cond_2d
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZZ)V

    return-void
.end method

.method public setItemChecked(Landroid/view/View;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mStartActionModeTime:J

    .line 2
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Lmiuix/appcompat/app/Fragment;)V
    .registers 5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mStartActionModeTime:J

    .line 9
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    if-eqz p2, :cond_13

    .line 10
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_13
    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V
    .registers 4

    .line 11
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startActionMode(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;)V
    .registers 5

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mStartActionModeTime:J

    .line 5
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListenerWrapper;-><init>(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    if-eqz p1, :cond_1a

    .line 6
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mChoiceListener:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_1f

    .line 7
    :cond_1a
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :goto_1f
    return-void
.end method

.method public swapCheckedStates(II)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 22
    move-result-wide v3

    .line 23
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v5

    .line 33
    if-eqz v2, :cond_2f

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2f
    if-eqz v5, :cond_3e

    .line 50
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mCheckedIdStates:Ljava/util/HashMap;

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3e
    return-void
.end method

.method public toggleItemChecked(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_c
    return-void
.end method

.method public toggleItemChecked(Landroid/view/View;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->isItemChecked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setItemChecked(IZ)V

    :cond_12
    return-void
.end method
