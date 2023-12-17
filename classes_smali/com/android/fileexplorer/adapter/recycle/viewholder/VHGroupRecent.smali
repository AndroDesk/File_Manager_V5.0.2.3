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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHPinnedNoEditView;-><init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;)V

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

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz p2, :cond_d

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$onBind$1(Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mListener:Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;

    if-eqz p2, :cond_d

    check-cast p2, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->isExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;->onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public hasAnimationStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    return v0
.end method

.method public isPinnedView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public notifyActionModeChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->notifyActionModeChange(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v0, :cond_2f

    const-string v0, "notifyActionModeChange isCheckedAll = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VHGroupRecent"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v2, v2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    :cond_2f
    return-void
.end method

.method public onAnimationStart(Z)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStart(Z)V

    const-string v0, "test"

    const-string v1, "start---"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v1, :cond_48

    const v1, 0x7f032e06

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c23

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz p1, :cond_42

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_48

    :cond_42
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onAnimationStop(Z)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationStop(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v1, :cond_3f

    const v1, 0x7f032e06

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c23

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x3f800000  # 1.0f

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f

    :cond_36
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->mStarted:Z

    return-void
.end method

.method public onAnimationUpdate(ZF)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onAnimationUpdate(ZF)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v1, :cond_57

    const v1, 0x7f032e06

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v2, 0x7f032c23

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, p2}, Lmiuix/view/animation/SineEaseInOutInterpolator;->getInterpolation(F)F

    move-result v2

    new-instance v3, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v3}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v4, 0x3f7d70a4  # 0.99f

    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v3

    const v4, 0x3f2b851f  # 0.67f

    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, p2

    invoke-virtual {v3, v4}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->getInterpolation(F)F

    move-result p2

    if-eqz p1, :cond_51

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_57

    :cond_51
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_57
    :goto_57
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

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/NoEditableViewHolder;->onBind(Ljava/lang/Object;IZZ)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v1, :cond_1c

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

    :cond_1c
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    if-eqz p2, :cond_50

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_45

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f032fac

    invoke-static/range {p3 .. p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_50

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_50

    :cond_45
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance p3, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;IZZ)V
    .registers 5

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->onBind(Lcom/android/fileexplorer/model/group/FileGroupParent;IZZ)V

    return-void
.end method

.method public onUpdateEditable(Z)Z
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    if-eqz v0, :cond_2c

    const-string v0, "onUpdateEditable isCheckedALl = "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VHGroupRecent"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/BaseFileItemViewHolder;->onUpdateEditable(Z)Z

    move-result p1

    return p1
.end method
