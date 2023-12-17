.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListFragment.java"


# static fields
.field public static final INTERNAL_EMPTY_ID:I = 0xff0001

.field public static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field public static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mEmptyText:Ljava/lang/CharSequence;

.field public mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field public mList:Landroid/widget/ListView;

.field public mListContainer:Landroid/view/View;

.field public mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field public mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v0, Landroidx/fragment/app/ListFragment$a;

    .line 13
    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$a;-><init>(Landroidx/fragment/app/ListFragment;)V

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Landroidx/fragment/app/ListFragment$b;

    .line 20
    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$b;-><init>(Landroidx/fragment/app/ListFragment;)V

    .line 23
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 25
    return-void
.end method

.method private ensureList()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_a0

    .line 12
    instance-of v1, v0, Landroid/widget/ListView;

    .line 14
    if-eqz v1, :cond_14

    .line 16
    check-cast v0, Landroid/widget/ListView;

    .line 18
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 20
    goto :goto_7b

    .line 21
    :cond_14
    const v1, 0xff0001

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 32
    if-nez v1, :cond_2b

    .line 34
    const v1, 0x1020004

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    const/16 v2, 0x8

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_30
    const v1, 0xff0002

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 58
    const v1, 0xff0003

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 67
    const v1, 0x102000a

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    instance-of v1, v0, Landroid/widget/ListView;

    .line 76
    if-nez v1, :cond_5f

    .line 78
    if-nez v0, :cond_57

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v0

    .line 88
    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    .line 90
    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    :cond_5f
    check-cast v0, Landroid/widget/ListView;

    .line 98
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 102
    if-eqz v1, :cond_6b

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 107
    goto :goto_7b

    .line 108
    :cond_6b
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 110
    if-eqz v0, :cond_7b

    .line 112
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 119
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 124
    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 127
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 129
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 136
    if-eqz v0, :cond_90

    .line 138
    const/4 v1, 0x0

    .line 139
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 141
    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    goto :goto_98

    .line 145
    :cond_90
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 147
    if-eqz v0, :cond_98

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 153
    :cond_98
    :goto_98
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 155
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void

    .line 161
    :cond_a0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 163
    const-string v1, "Content view not yet created"

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    throw v0
.end method

.method private setListShown(ZZ)V
    .registers 8

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_74

    .line 4
    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-ne v1, p1, :cond_c

    return-void

    .line 5
    :cond_c
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_46

    if-eqz p2, :cond_33

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 10
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3b

    .line 11
    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 13
    :goto_3b
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_73

    :cond_46
    if-eqz p2, :cond_61

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 16
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 19
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_69

    .line 20
    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 21
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 22
    :goto_69
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_73
    return-void

    .line 24
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 6
    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Landroid/widget/FrameLayout;

    .line 7
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p3, Landroid/widget/LinearLayout;

    .line 12
    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const v0, 0xff0002

    .line 18
    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    const/16 v0, 0x8

    .line 27
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    const/16 v0, 0x11

    .line 32
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    new-instance v1, Landroid/widget/ProgressBar;

    .line 37
    const/4 v2, 0x0

    .line 38
    const v3, 0x101007a

    .line 41
    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    const/4 v3, -0x2

    .line 47
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    const/4 v2, -0x1

    .line 56
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance p3, Landroid/widget/FrameLayout;

    .line 64
    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const v1, 0xff0003

    .line 70
    invoke-virtual {p3, v1}, Landroid/view/View;->setId(I)V

    .line 73
    new-instance v1, Landroid/widget/TextView;

    .line 75
    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    const v3, 0xff0001

    .line 81
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Landroid/widget/ListView;

    .line 97
    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 100
    const p1, 0x102000a

    .line 103
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 106
    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 110
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-object p2
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 14
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 16
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 18
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 20
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 22
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 25
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 7
    return-void
.end method

.method public final requireListAdapter()Landroid/widget/ListAdapter;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "ListFragment "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " does not have a ListAdapter."

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 6
    if-eqz v0, :cond_18

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 13
    if-nez v0, :cond_15

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 17
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 22
    :cond_15
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 24
    return-void

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "Can\'t be used with a custom content view"

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_8

    .line 7
    move v0, v2

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move v0, v1

    .line 10
    :goto_9
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 12
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 14
    if-eqz v3, :cond_26

    .line 16
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    iget-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 21
    if-nez p1, :cond_26

    .line 23
    if-nez v0, :cond_26

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_23

    .line 35
    move v1, v2

    .line 36
    :cond_23
    invoke-direct {p0, v2, v1}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 39
    :cond_26
    return-void
.end method

.method public setListShown(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 5
    return-void
.end method

.method public setSelection(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 9
    return-void
.end method
