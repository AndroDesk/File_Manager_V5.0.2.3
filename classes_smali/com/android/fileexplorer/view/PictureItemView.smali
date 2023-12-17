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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/PictureItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindViewRealForRV(Ljava/lang/String;ZZ)V
    .registers 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "isCheckMode = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", isChecked = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "PictureItemView"

    .line 28
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p3, :cond_25

    .line 34
    if-eqz p2, :cond_25

    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v1, v0

    .line 39
    :goto_26
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 44
    const/16 v2, 0x8

    .line 46
    if-eqz p3, :cond_31

    .line 48
    move p3, v0

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move p3, v2

    .line 51
    :goto_32
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p3, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 56
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 59
    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    .line 61
    invoke-static {p1}, Lcom/android/fileexplorer/util/BitmapUtils;->isGifSuffix(Ljava/lang/String;)Z

    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_43

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    move v0, v2

    .line 69
    :goto_44
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_59

    .line 82
    const p2, 0x7f07031e

    .line 85
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 88
    move-result p2

    .line 89
    goto :goto_5d

    .line 90
    :cond_59
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->getSize()I

    .line 93
    move-result p2

    .line 94
    :goto_5d
    move v6, p2

    .line 95
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 98
    move-result-object v0

    .line 99
    new-instance p2, Ljava/io/File;

    .line 101
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 107
    move-result-wide v2

    .line 108
    const v4, 0x7f080128

    .line 111
    iget-object v5, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 113
    move-object v1, p1

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_88

    .line 127
    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFlParent:Landroid/view/View;

    .line 129
    if-eqz p1, :cond_88

    .line 131
    const p2, 0x7f08014a

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    :cond_88
    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;ZZ)V
    .registers 15

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_6

    .line 5
    move v2, v0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move v2, v1

    .line 8
    :goto_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 17
    if-eqz p1, :cond_16

    .line 19
    if-eqz p4, :cond_16

    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move p2, v1

    .line 24
    :goto_17
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 27
    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 29
    invoke-virtual {p2, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 32
    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 34
    const/16 p3, 0x8

    .line 36
    if-eqz p5, :cond_27

    .line 38
    move p4, v1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move p4, p3

    .line 41
    :goto_28
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    if-nez p1, :cond_34

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    goto :goto_8a

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenWidth()I

    .line 56
    move-result p2

    .line 57
    const p4, 0x7f070726

    .line 60
    invoke-static {p4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 63
    move-result p4

    .line 64
    mul-int/lit8 p4, p4, 0x3

    .line 66
    sub-int/2addr p2, p4

    .line 67
    const p4, 0x7f070247

    .line 70
    invoke-static {p4}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 73
    move-result p4

    .line 74
    mul-int/lit8 p4, p4, 0x2

    .line 76
    sub-int/2addr p2, p4

    .line 77
    div-int/lit8 v8, p2, 0x4

    .line 79
    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    add-int/lit8 p4, v8, -0x1

    .line 89
    iput p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 91
    iput p4, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 93
    iget-object p4, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 95
    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object p2, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 103
    move-result-object p4

    .line 104
    invoke-static {p4}, Lcom/android/fileexplorer/util/BitmapUtils;->isGifSuffix(Ljava/lang/String;)Z

    .line 107
    move-result p4

    .line 108
    if-eqz p4, :cond_6e

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v1, p3

    .line 112
    :goto_6f
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 130
    move-result-wide v4

    .line 131
    const v6, 0x7f080216

    .line 134
    iget-object v7, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 136
    invoke-virtual/range {v2 .. v8}, Lcom/android/fileexplorer/model/FileIconHelper;->loadRoundIntoWithPadding(Ljava/lang/String;JILandroid/widget/ImageView;I)V

    .line 139
    :goto_8a
    return-void
.end method

.method public bindViewForRV(Ljava/lang/Object;ZZ)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_9

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void

    .line 10
    :cond_9
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_15

    .line 15
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 17
    iget-object v0, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 19
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    instance-of v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 24
    if-eqz v1, :cond_22

    .line 26
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 28
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p1, v2

    .line 36
    :goto_23
    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFavView:Landroid/widget/ImageView;

    .line 38
    if-eqz p1, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const/16 v2, 0x8

    .line 43
    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v1, "bindViewForRV isCheckMode = "

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", isChecked = "

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", path = "

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    const-string v1, "PictureItemView"

    .line 81
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0, p2, p3}, Lcom/android/fileexplorer/view/PictureItemView;->bindViewRealForRV(Ljava/lang/String;ZZ)V

    .line 87
    return-void
.end method

.method public getSize()I
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

.method public initImageSize()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->getSize()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object v1

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v2, "width = "

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ", height = "

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", DisplayUtil.getScreenWidth2() = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    const-string v1, "PictureItemView"

    .line 69
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a031b

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mImage:Landroid/widget/ImageView;

    .line 15
    const v0, 0x1020001

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/CheckBox;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 26
    const v0, 0x7f0a01ab

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mGifTag:Landroid/widget/ImageView;

    .line 37
    const v0, 0x7f0a0174

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFavView:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0a0198

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mFlParent:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_45

    .line 67
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PictureItemView;->initImageSize()V

    .line 70
    :cond_45
    return-void
.end method

.method public updateViewOnScreenByActionMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PictureItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    return-void
.end method
