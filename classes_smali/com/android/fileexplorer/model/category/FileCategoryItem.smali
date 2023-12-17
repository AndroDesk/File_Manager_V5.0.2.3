.class public Lcom/android/fileexplorer/model/category/FileCategoryItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "FileCategoryItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditModeView:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v2, 0x3da3d70a  # 0.08f

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    const p2, 0x7f032d5a

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f032d50

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f032cce

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_5a

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5a
    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p2, :cond_61

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_61
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f042da6

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;Z)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    if-eqz p2, :cond_1c

    new-instance p2, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f042da7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1c
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;->newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceByWidget(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/category/FileCategoryItem;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/model/category/FileCategoryItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f042da4

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/category/FileCategoryItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;I)V
    .registers 9

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_8c

    :cond_30
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p3

    if-eqz p3, :cond_8c

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

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

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoByUrl(Landroid/net/Uri;ILandroid/widget/ImageView;I)V

    :cond_8c
    :goto_8c
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const v0, 0x7f0a00c7

    invoke-virtual {p3, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a00c8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

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

    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_11
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getType()I

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getCategoryTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIconRes(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_73

    :cond_2c
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getTagAppName(Lcom/android/fileexplorer/dao/file/AppTag;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_41

    goto :goto_49

    :cond_41
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getAppTag()Lcom/android/fileexplorer/dao/file/AppTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/AppTag;->getAppName()Ljava/lang/String;

    move-result-object p1

    :goto_49
    iget-object p3, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    :cond_73
    :goto_73
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const p3, 0x7f0a00c7

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/model/category/FileCategoryItem;->mEditModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    const p1, 0x7f0801f6

    goto :goto_e

    :cond_b
    const p1, 0x7f0801f0

    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    return-void
.end method
