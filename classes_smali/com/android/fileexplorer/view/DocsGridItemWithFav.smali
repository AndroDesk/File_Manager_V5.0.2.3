.class public Lcom/android/fileexplorer/view/DocsGridItemWithFav;
.super Landroid/widget/RelativeLayout;
.source "DocsGridItemWithFav.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/GetGestureDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DocsGridItemWithFav"


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFavoriteTagView:Landroid/view/View;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mImageParent:Landroid/view/View;

.field private mModifyTime:Landroid/widget/TextView;

.field private mNormalSnapshot:Landroid/widget/ImageView;

.field private mPPTSnapshot:Landroid/widget/ImageView;

.field private mSelectedBg:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->setIfShowBackground(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->showSnapshot(Z)V

    return-void
.end method

.method private onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V
    .registers 12

    const-string v0, "DocsGridItemWithFav"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz p1, :cond_16

    move v3, v0

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    move p1, v0

    :goto_23
    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    iget-boolean p2, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mModifyTime:Landroid/widget/TextView;

    iget-wide v0, p3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isPPT(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->showSnapshot(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "242X134"

    const-string v1, "204X300"

    goto :goto_68

    :cond_64
    const-string v0, "264X168"

    const-string v1, "186X264"

    :goto_68
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    if-eqz p2, :cond_70

    move-object v4, v0

    goto :goto_71

    :cond_70
    move-object v4, v1

    :goto_71
    if-eqz p2, :cond_76

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    goto :goto_78

    :cond_76
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    :goto_78
    move-object v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-static {p1}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    move-result p1

    goto :goto_8c

    :cond_88
    invoke-static {p1}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    move-result p1

    :goto_8c
    move v6, p1

    new-instance v7, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;

    invoke-direct {v7, p0, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;-><init>(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    return-void
.end method

.method private setIfShowBackground(Z)V
    .registers 3

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    const v0, 0x7f080149

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_24

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    const v0, 0x7f08014a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_24

    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_24
    return-void
.end method

.method private showSnapshot(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v1, :cond_32

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz p1, :cond_29

    const-string p1, "121:67"

    goto :goto_2b

    :cond_29
    const-string p1, "104:128"

    :goto_2b
    iput-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public getDocImageView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 4

    if-nez p1, :cond_b

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_b
    invoke-direct {p0, p2, p3, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public onBindWithFileItem(Lcom/android/fileexplorer/dao/file/FileItem;ZZ)V
    .registers 4

    if-nez p1, :cond_12

    const-string p1, "DocsGridItemWithFav"

    const-string p2, "onBindWithFileItem fileItem is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_12
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032c75

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032f33

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mModifyTime:Landroid/widget/TextView;

    const v0, 0x7f032ce2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    const v0, 0x7f032cd4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    const v0, 0x7f032cd5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    const v0, 0x7f032fe1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->detector:Landroid/view/GestureDetector;

    return-void
.end method

.method public updateViewByCheckedStatueChange(Z)V
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method
