.class public Lcom/android/fileexplorer/view/TimeGroupHeaderView;
.super Landroid/widget/LinearLayout;
.source "TimeGroupHeaderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeGroupHeaderView"


# instance fields
.field private mCount:Landroid/widget/TextView;

.field private mExpandImage:Landroid/widget/ImageView;

.field private mSelectAll:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/group/FileGroupParent;ZZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mTime:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindView: checkAll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeGroupHeaderView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    const v2, 0x7f0f0033

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mExpandImage:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    goto :goto_3b

    :cond_39
    const/16 v1, 0x8

    :goto_3b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {p0, p3, p2, v0}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    new-instance v6, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;-><init>(Lcom/android/fileexplorer/view/TimeGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    invoke-virtual {p3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0329b3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mTime:Landroid/widget/TextView;

    const v0, 0x7f032c25

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    const v0, 0x7f032e06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    const v0, 0x7f032c77

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mExpandImage:Landroid/widget/ImageView;

    return-void
.end method

.method public updateOnScreenViewByActionMode(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    return-void
.end method

.method public updateOnScreenViewByActionMode(ZZZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz v0, :cond_31

    if-eqz p3, :cond_10

    const p3, 0x7f110415

    goto :goto_13

    :cond_10
    const p3, 0x7f110414

    :goto_13
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    if-eqz p2, :cond_1e

    if-nez p1, :cond_1e

    move v0, v4

    goto :goto_1f

    :cond_1e
    move v0, v3

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_31

    if-eqz p2, :cond_2c

    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_2c
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    :goto_31
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    if-eqz p3, :cond_4d

    if-eqz p2, :cond_3a

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4d

    if-eqz p2, :cond_48

    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4d
    :goto_4d
    return-void
.end method
