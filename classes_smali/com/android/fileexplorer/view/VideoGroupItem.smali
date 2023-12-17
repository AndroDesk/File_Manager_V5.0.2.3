.class public Lcom/android/fileexplorer/view/VideoGroupItem;
.super Landroid/widget/RelativeLayout;
.source "VideoGroupItem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoGroupItem"


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mImage:Landroid/widget/ImageView;

.field private mVideoTag:Landroid/widget/ImageView;


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


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZLandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 16

    const/4 p5, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_6

    move v1, p5

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    const/4 p6, 0x1

    goto :goto_14

    :cond_13
    move p6, v0

    :goto_14
    invoke-virtual {p0, p6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p6, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_1f

    goto :goto_21

    :cond_1f
    const/16 v0, 0x8

    :goto_21
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_77

    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    move-result p3

    const p6, 0x7f070726

    invoke-static {p6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p6

    mul-int/lit8 p6, p6, 0x3

    sub-int/2addr p3, p6

    const p6, 0x7f070247

    invoke-static {p6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p6

    mul-int/lit8 p6, p6, 0x2

    sub-int/2addr p3, p6

    div-int/lit8 v6, p3, 0x4

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v6, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p5, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p5, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    if-eqz p4, :cond_6f

    const-string p2, "mp4"

    :cond_6f
    move-object v4, p2

    const v5, 0x7f080128

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    :goto_77
    return-void
.end method

.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x4

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    if-eqz p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/16 v0, 0x8

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6b

    :cond_2d
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/VideoGroupItem;->getItemSize()I

    move-result v6

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p5, :cond_46

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iput v6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_46
    add-int/lit8 p5, v6, -0x1

    iput p5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p5, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p5, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    if-eqz p4, :cond_63

    const-string p2, "mp4"

    :cond_63
    move-object v4, p2

    const v5, 0x7f080128

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    :goto_6b
    return-void
.end method

.method public getImage()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItemSize()I
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

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032c4a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032c45

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mVideoTag:Landroid/widget/ImageView;

    return-void
.end method
