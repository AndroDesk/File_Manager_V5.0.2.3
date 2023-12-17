.class public Lcom/android/fileexplorer/view/PhoneGroupHeaderView;
.super Landroid/widget/RelativeLayout;
.source "PhoneGroupHeaderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneGroupHeaderView"


# instance fields
.field private mGroupFileCount:Landroid/widget/TextView;

.field private mSelectAll:Landroid/widget/TextView;

.field private mTimeTv:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Lcom/android/fileexplorer/apptag/FileItemGroup;)V
    .registers 5

    .line 1
    instance-of v0, p2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setTitle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    const-string v0, ""

    .line 23
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2d

    .line 29
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2d

    .line 39
    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public bindData(ZZLcom/android/fileexplorer/model/group/FileGroupParent;Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 13

    .line 1
    iget-object v0, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v1, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    .line 8
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    .line 11
    iget-object p1, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    .line 13
    if-eqz p1, :cond_1c

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0f0033

    .line 20
    iget v2, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    .line 22
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTitle:Landroid/widget/TextView;

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->setTitle(Landroid/widget/TextView;Lcom/android/fileexplorer/apptag/FileItemGroup;)V

    .line 34
    iget-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 39
    move-result-wide v0

    .line 40
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTimeTv:Landroid/widget/TextView;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const v2, 0x7f11012a

    .line 54
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    .line 73
    new-instance v6, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;

    .line 75
    move-object v0, v6

    .line 76
    move-object v1, p0

    .line 77
    move-object v2, p3

    .line 78
    move v3, p2

    .line 79
    move-object v4, p4

    .line 80
    move v5, p5

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;-><init>(Lcom/android/fileexplorer/view/PhoneGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    .line 84
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0428

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTitle:Landroid/widget/TextView;

    .line 15
    const v0, 0x7f0a0425

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTimeTv:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0a01b5

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0a0390

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public updateOnScreenCheckStatue(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    return-void
.end method

.method public updateOnScreenCheckStatue(ZZZ)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

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

    .line 2
    :goto_13
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

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

    .line 4
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 5
    :cond_2c
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_31
    :goto_31
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    if-eqz p3, :cond_4d

    if-eqz p2, :cond_3a

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    .line 7
    :goto_3b
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_4d

    if-eqz p2, :cond_48

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    .line 9
    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4d
    :goto_4d
    return-void
.end method
