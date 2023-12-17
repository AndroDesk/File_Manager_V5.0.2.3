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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZLandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 16

    .line 1
    const/4 p5, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_6

    .line 5
    move v1, p5

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move v1, v0

    .line 8
    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    if-eqz p1, :cond_13

    .line 16
    if-eqz p2, :cond_13

    .line 18
    const/4 p6, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move p6, v0

    .line 21
    :goto_14
    invoke-virtual {p0, p6}, Landroid/view/View;->setSelected(Z)V

    .line 24
    invoke-virtual {p0, p7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 27
    iget-object p6, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 29
    if-eqz p3, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/16 v0, 0x8

    .line 34
    :goto_21
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 39
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 42
    const/4 p2, 0x0

    .line 43
    if-nez p1, :cond_32

    .line 45
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    goto :goto_77

    .line 51
    :cond_32
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    .line 54
    move-result p3

    .line 55
    const p6, 0x7f070726

    .line 58
    invoke-static {p6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 61
    move-result p6

    .line 62
    mul-int/lit8 p6, p6, 0x3

    .line 64
    sub-int/2addr p3, p6

    .line 65
    const p6, 0x7f070247

    .line 68
    invoke-static {p6}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 71
    move-result p6

    .line 72
    mul-int/lit8 p6, p6, 0x2

    .line 74
    sub-int/2addr p3, p6

    .line 75
    div-int/lit8 v6, p3, 0x4

    .line 77
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    iput v6, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    iput v6, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 89
    iget-object p5, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p5, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 105
    move-result-wide v1

    .line 106
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 108
    if-eqz p4, :cond_6f

    .line 110
    const-string p2, "mp4"

    .line 112
    :cond_6f
    move-object v4, p2

    .line 113
    const v5, 0x7f080128

    .line 116
    const/4 v7, 0x0

    .line 117
    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 120
    :goto_77
    return-void
.end method

.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_5

    .line 4
    const/4 v1, 0x4

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v1, v0

    .line 7
    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    if-eqz p1, :cond_11

    .line 12
    if-eqz p3, :cond_11

    .line 14
    if-eqz p2, :cond_11

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v1, v0

    .line 19
    :goto_12
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 22
    iget-object v1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 24
    if-eqz p3, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/16 v0, 0x8

    .line 29
    :goto_1c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 34
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    const/4 p2, 0x0

    .line 38
    if-nez p1, :cond_2d

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    goto :goto_6b

    .line 46
    :cond_2d
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/VideoGroupItem;->getItemSize()I

    .line 49
    move-result v6

    .line 50
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    if-eqz p5, :cond_46

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object p5

    .line 64
    iput v6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    iput v6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    invoke-virtual {p0, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_46
    add-int/lit8 p5, v6, -0x1

    .line 73
    iput p5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 75
    iput p5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 77
    iget-object p5, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p5, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 93
    move-result-wide v1

    .line 94
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 96
    if-eqz p4, :cond_63

    .line 98
    const-string p2, "mp4"

    .line 100
    :cond_63
    move-object v4, p2

    .line 101
    const v5, 0x7f080128

    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-static/range {v0 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconRound(Ljava/lang/String;JLandroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 108
    :goto_6b
    return-void
.end method

.method public getImage()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 3
    return-object v0
.end method

.method public getItemSize()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 9
    const v1, 0x7f070726

    .line 12
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 15
    move-result v1

    .line 16
    mul-int/lit8 v1, v1, 0x3

    .line 18
    sub-int/2addr v0, v1

    .line 19
    const v1, 0x7f070247

    .line 22
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 28
    sub-int/2addr v0, v1

    .line 29
    div-int/lit8 v0, v0, 0x4

    .line 31
    return v0
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a01dc

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 15
    const v0, 0x1020001

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/CheckBox;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 26
    const v0, 0x7f0a01d3

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mVideoTag:Landroid/widget/ImageView;

    .line 37
    return-void
.end method
