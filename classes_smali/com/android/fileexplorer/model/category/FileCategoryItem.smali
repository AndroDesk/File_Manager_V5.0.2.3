.class public Lcom/android/fileexplorer/model/category/FileCategoryItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "FileCategoryItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditModeView:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Landroid/view/View;

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p1, v0, v1

    .line 10
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 17
    move-result-object v0

    .line 18
    const v2, 0x3da3d70a  # 0.08f

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v0, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 25
    move-result-object v0

    .line 26
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 39
    const p2, 0x7f0a00cc

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/TextView;

    .line 48
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    .line 50
    const p2, 0x7f0a00c6

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/ImageView;

    .line 59
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    .line 61
    const p2, 0x7f0a0158

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 70
    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    .line 72
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 74
    if-eqz p2, :cond_4e

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_4e
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 81
    if-eqz p2, :cond_55

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    :cond_55
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d0030

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Z)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    if-eqz p2, :cond_18

    .line 2
    new-instance p2, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d0031

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 3
    :cond_18
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceByWidget(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p0

    .line 11
    const v1, 0x7f0d0032

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;I)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    move-result v0

    if-nez v0, :cond_30

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 6
    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_8c

    .line 7
    :cond_30
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p3

    if-eqz p3, :cond_8c

    .line 8
    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    const/4 p3, 0x0

    goto :goto_76

    :cond_72
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    :goto_76
    const v1, 0x7f0800cf

    iget-object v2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 14
    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByUrl(Landroid/net/Uri;ILandroid/widget/ImageView;I)V

    .line 15
    :cond_8c
    :goto_8c
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x7f0a00c7

    invoke-virtual {p3, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a00c8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p2, 0x7f0a00c9

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;ZI)V
    .registers 12

    if-eqz p3, :cond_b

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    .line 21
    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :goto_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    move-result p1

    if-nez p1, :cond_2c

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_73

    .line 25
    :cond_2c
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 26
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_41

    goto :goto_49

    :cond_41
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_49
    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p3

    invoke-static {p1, p3}, Lcom/android/fileexplorer/apptag/AppIconHelper;->getAppIconAssetsPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0800cf

    iget-object v5, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadInto(Ljava/lang/String;IIILandroid/widget/ImageView;Z)V

    .line 30
    :cond_73
    :goto_73
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a00c7

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_b

    .line 8
    const p1, 0x7f0801f6

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    const p1, 0x7f0801f0

    .line 15
    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :cond_11
    return-void
.end method
