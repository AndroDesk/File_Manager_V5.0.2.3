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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/group/FileGroupParent;ZZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mTime:Landroid/widget/TextView;

    .line 3
    iget-wide v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupCreateTime:J

    .line 5
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "bindView: checkAll = "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "TimeGroupHeaderView"

    .line 33
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    .line 38
    iget v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 40
    const v2, 0x7f0f0033

    .line 43
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mExpandImage:Landroid/widget/ImageView;

    .line 52
    iget-boolean v1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->expandable:Z

    .line 54
    if-eqz v1, :cond_39

    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    const/16 v1, 0x8

    .line 60
    :goto_3b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-boolean v0, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 65
    invoke-virtual {p0, p3, p2, v0}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    .line 68
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    .line 70
    new-instance v6, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;

    .line 72
    move-object v0, v6

    .line 73
    move-object v1, p0

    .line 74
    move-object v2, p1

    .line 75
    move v3, p2

    .line 76
    move-object v4, p4

    .line 77
    move v5, p5

    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/view/TimeGroupHeaderView$1;-><init>(Lcom/android/fileexplorer/view/TimeGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    .line 81
    invoke-virtual {p3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0425

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mTime:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a01b3

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a0390

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a01e1

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mExpandImage:Landroid/widget/ImageView;

    .line 48
    return-void
.end method

.method public updateOnScreenViewByActionMode(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->updateOnScreenViewByActionMode(ZZZ)V

    return-void
.end method

.method public updateOnScreenViewByActionMode(ZZZ)V
    .registers 9

    .line 2
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

    .line 3
    :goto_13
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 4
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

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 6
    :cond_2c
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_31
    :goto_31
    iget-object p3, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    if-eqz p3, :cond_4d

    if-eqz p2, :cond_3a

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    .line 8
    :goto_3b
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4d

    if-eqz p2, :cond_48

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    .line 10
    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/TimeGroupHeaderView;->mCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4d
    :goto_4d
    return-void
.end method
