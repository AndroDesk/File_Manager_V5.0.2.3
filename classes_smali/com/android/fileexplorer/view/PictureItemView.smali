.class public Lcom/android/fileexplorer/view/PictureItemView;
.super Landroid/widget/RelativeLayout;
.source "PictureItemView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PictureItemView"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFavView:Landroid/widget/ImageView;

.field private mFlParent:Landroid/view/View;

.field private mGifTag:Landroid/widget/ImageView;

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PictureItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindViewRealForRV(Ljava/lang/String;ZZ)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCheckMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureItemView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_25

    if-eqz p2, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    move v1, v0

    :goto_26
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    if-eqz p3, :cond_31

    move p3, v0

    goto :goto_32

    :cond_31
    move p3, v2

    :goto_32
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/fileexplorer/util/BitmapUtils;->isGifSuffix(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_59

    const p2, 0x7f07031e

    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_5d

    :cond_59
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->getSize()I

    move-result p2

    :goto_5d
    move v6, p2

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const v4, 0x7f080128

    iget-object v5, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFlParent:Landroid/view/View;

    if-eqz p1, :cond_88

    const p2, 0x7f08014a

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_88
    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V
    .registers 15

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz p1, :cond_16

    if-eqz p4, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 p3, 0x8

    if-eqz p5, :cond_27

    move p4, v1

    goto :goto_28

    :cond_27
    move p4, p3

    :goto_28
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8a

    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    move-result p2

    const p4, 0x7f070726

    invoke-static {p4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    sub-int/2addr p2, p4

    const p4, 0x7f070247

    invoke-static {p4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p4

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    div-int/lit8 v8, p2, 0x4

    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 p4, v8, -0x1

    iput p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/util/BitmapUtils;->isGifSuffix(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, p3

    :goto_6f
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const v6, 0x7f080216

    iget-object v7, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V

    :goto_8a
    return-void
.end method

.method public bindViewForRV(Ljava/lang/Object;ZZ)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_9
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_23

    :cond_15
    instance-of v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v1, :cond_22

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    goto :goto_23

    :cond_22
    move p1, v2

    :goto_23
    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFavView:Landroid/widget/ImageView;

    if-eqz p1, :cond_28

    goto :goto_2a

    :cond_28
    const/16 v2, 0x8

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindViewForRV isCheckMode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PictureItemView"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/fileexplorer/view/PictureItemView;->bindViewRealForRV(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getSize()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f070726

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    const v1, 0x7f070247

    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public initImageSize()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DisplayUtil.getScreenWidth2() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureItemView"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032e8d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032c3d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    const v0, 0x7f032ce2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFavView:Landroid/widget/ImageView;

    const v0, 0x7f032c0e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFlParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->initImageSize()V

    :cond_55
    return-void
.end method

.method public updateViewOnScreenByActionMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
