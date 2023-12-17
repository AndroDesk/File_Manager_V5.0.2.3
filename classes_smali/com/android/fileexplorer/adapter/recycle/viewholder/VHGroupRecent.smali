.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView;
.source "VHGroupRecent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView<",
        "Lcom/android/fileexplorer/model/group/FileGroupParent<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHGroupRecent"


# instance fields
.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->lambda$onBind$1(Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->lambda$onBind$0(Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBind$0(Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    if-eqz p2, :cond_d

    .line 5
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    .line 7
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 14
    :cond_d
    return-void
.end method

.method private synthetic lambda$onBind$1(Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    .line 3
    if-eqz p2, :cond_d

    .line 5
    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    .line 7
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 11
    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public hasAnimationStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    .line 3
    return v0
.end method

.method public isPinnedView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public notifyActionModeChange(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->notifyActionModeChange(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v0, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 8
    if-eqz v0, :cond_2f

    .line 10
    const-string v0, "notifyActionModeChange isCheckedAll = "

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 20
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "VHGroupRecent"

    .line 31
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 36
    check-cast v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 38
    const/4 v1, 0x1

    .line 39
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 41
    check-cast v2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 43
    iget-boolean v2, v2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 45
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    .line 48
    :cond_2f
    return-void
.end method

.method public onAnimationStart(Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    .line 4
    const-string v0, "test"

    .line 6
    const-string v1, "start---"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 18
    if-eqz v1, :cond_40

    .line 20
    const v1, 0x7f0a0390

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 31
    const v2, 0x7f0a01b5

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    const/4 v2, 0x0

    .line 48
    const/high16 v3, 0x3f800000  # 1.0f

    .line 50
    if-eqz p1, :cond_3a

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 58
    goto :goto_40

    .line 59
    :cond_3a
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 8
    if-eqz v1, :cond_37

    .line 10
    const v1, 0x7f0a0390

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    const v2, 0x7f0a01b5

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 30
    const/high16 v2, 0x3f800000  # 1.0f

    .line 32
    const/16 v3, 0x8

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz p1, :cond_2e

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 43
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 56
    :cond_37
    :goto_37
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    .line 59
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 8
    if-eqz v1, :cond_4f

    .line 10
    const v1, 0x7f0a0390

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 21
    const v2, 0x7f0a01b5

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 30
    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 32
    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 35
    invoke-virtual {v2, p2}, Lmiuix/view/animation/SineEaseInOutInterpolator;->getInterpolation(F)F

    .line 38
    move-result v2

    .line 39
    new-instance v3, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 41
    invoke-direct {v3}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    .line 44
    const v4, 0x3f7d70a4  # 0.99f

    .line 47
    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 50
    move-result-object v3

    .line 51
    const v4, 0x3f2b851f  # 0.67f

    .line 54
    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    .line 57
    move-result-object v3

    .line 58
    const/high16 v4, 0x3f800000  # 1.0f

    .line 60
    sub-float/2addr v4, p2

    .line 61
    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->getInterpolation(F)F

    .line 64
    move-result p2

    .line 65
    if-eqz p1, :cond_49

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 70
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 73
    goto :goto_4f

    .line 74
    :cond_49
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public onBind(Lcom/android/fileexplorer/model/group/FileGroupParent;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupParent<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v1, :cond_1c

    .line 4
    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-object v6, v0

    check-cast v6, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    move v3, p4

    move v4, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->bindData(ZZLcom/android/fileexplorer/model/group/FileGroupParent;Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    .line 5
    :cond_1c
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    if-eqz p2, :cond_4c

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a023a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 8
    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4c

    .line 9
    :cond_41
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->onBind(Lcom/android/fileexplorer/model/group/FileGroupParent;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    instance-of v0, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 5
    if-eqz v0, :cond_2c

    .line 7
    const-string v0, "onUpdateEditable isCheckedALl = "

    .line 9
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 17
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VHGroupRecent"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    check-cast v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 37
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 39
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    .line 45
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onUpdateEditable(Z)Z

    .line 48
    move-result p1

    .line 49
    return p1
.end method
