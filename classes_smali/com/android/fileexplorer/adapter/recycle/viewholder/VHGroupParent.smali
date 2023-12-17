.class public Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;
.super Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView;
.source "VHGroupParent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView<",
        "Lcom/android/fileexplorer/model/group/FileGroupParent<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VHGroupParent"


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


# virtual methods
.method public hasAnimationStarted()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;->mStarted:Z

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
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    instance-of v1, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 5
    if-eqz v1, :cond_12

    .line 7
    check-cast v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 14
    iget-boolean v2, v2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 16
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    .line 19
    :cond_12
    return-void
.end method

.method public onAnimationStart(Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 8
    if-eqz v1, :cond_39

    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;->mStarted:Z

    .line 13
    const v1, 0x7f0a0390

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 24
    const v2, 0x7f0a01b3

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    const/4 v2, 0x0

    .line 41
    const/high16 v3, 0x3f800000  # 1.0f

    .line 43
    if-eqz p1, :cond_33

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 51
    goto :goto_39

    .line 52
    :cond_33
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 58
    :cond_39
    :goto_39
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 8
    if-eqz v1, :cond_3a

    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;->mStarted:Z

    .line 13
    const v1, 0x7f0a0390

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 24
    const v2, 0x7f0a01b3

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 33
    const/high16 v2, 0x3f800000  # 1.0f

    .line 35
    const/16 v3, 0x8

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz p1, :cond_31

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 43
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    goto :goto_3a

    .line 50
    :cond_31
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 59
    :cond_3a
    :goto_3a
    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    instance-of v1, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

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
    const v2, 0x7f0a01b3

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
            "TK;>;IZZ)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    const-string v0, "onBind pos = "

    const-string v1, "VHGroupParent"

    .line 3
    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    if-eqz v1, :cond_1f

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    move-object v6, v0

    check-cast v6, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->bindView(Lcom/android/fileexplorer/model/group/FileGroupParent;ZZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    .line 6
    :cond_1f
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    if-eqz p2, :cond_2d

    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;

    invoke-direct {p3, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;Lcom/android/fileexplorer/model/group/FileGroupParent;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    .line 1
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupParent;->onBind(Lcom/android/fileexplorer/model/group/FileGroupParent;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 3
    instance-of v0, v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

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
    const-string v1, "VHGroupParent"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 33
    check-cast v0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;

    .line 35
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    .line 37
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 39
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2, v2, v1}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    .line 45
    :cond_2c
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onUpdateEditable(Z)Z

    .line 48
    move-result p1

    .line 49
    return p1
.end method
