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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Lcom/android/fileexplorer/apptag/FileItemGroup;)V
    .registers 5

    instance-of v0, p2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    move-object v1, p2

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getGroupTitle(Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_14
    const-string v0, ""

    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p2}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public bindData(ZZLcom/android/fileexplorer/model/group/FileGroupParent;Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V
    .registers 13

    iget-object v0, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mCheckedAll:Z

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    iget-object p1, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    const v1, 0x7f0f0033

    iget v2, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->groupAllCount:I

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ResUtil;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->setTitle(Landroid/widget/TextView;Lcom/android/fileexplorer/apptag/FileItemGroup;)V

    iget-object p1, v0, Lcom/android/fileexplorer/apptag/FileItemGroup;->groupCreateTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/TimeUtils;->format(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTimeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11012a

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    new-instance v6, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView$1;-><init>(Lcom/android/fileexplorer/view/PhoneGroupHeaderView;Lcom/android/fileexplorer/model/group/FileGroupParent;ZLcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;I)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0329be

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0329b3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mTimeTv:Landroid/widget/TextView;

    const v0, 0x7f032c23

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    const v0, 0x7f032e06

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    return-void
.end method

.method public updateOnScreenCheckStatue(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->updateOnScreenCheckStatue(ZZZ)V

    return-void
.end method

.method public updateOnScreenCheckStatue(ZZZ)V
    .registers 9

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

    :goto_13
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

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

    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_2c
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    :goto_31
    iget-object p3, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

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

    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4d

    :cond_48
    iget-object p1, p0, Lcom/android/fileexplorer/view/PhoneGroupHeaderView;->mGroupFileCount:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4d
    :goto_4d
    return-void
.end method
