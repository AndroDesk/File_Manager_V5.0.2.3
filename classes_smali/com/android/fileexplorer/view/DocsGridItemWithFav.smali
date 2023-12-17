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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->setIfShowBackground(Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->showSnapshot(Z)V

    .line 4
    return-void
.end method

.method private onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V
    .registers 12

    .line 1
    const-string v0, "DocsGridItemWithFav"

    .line 3
    const-string v1, "onBind"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    .line 17
    const/16 v2, 0x8

    .line 19
    if-eqz p1, :cond_16

    .line 21
    move v3, v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v3, v2

    .line 24
    :goto_17
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    .line 29
    if-eqz p1, :cond_22

    .line 31
    if-eqz p2, :cond_22

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p1, v0

    .line 36
    :goto_23
    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 39
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 41
    iget-boolean p2, p3, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 43
    if-eqz p2, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v0, v2

    .line 47
    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mModifyTime:Landroid/widget/TextView;

    .line 52
    iget-wide v0, p3, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 54
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/DateUtils;->formatDate(J)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->isPPT(Ljava/lang/String;)Z

    .line 70
    move-result p2

    .line 71
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    .line 73
    iget-object v1, p3, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    .line 80
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Landroid/widget/TextView;)V

    .line 83
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->showSnapshot(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_64

    .line 96
    const-string v0, "242X134"

    .line 98
    const-string v1, "204X300"

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    const-string v0, "264X168"

    .line 103
    const-string v1, "186X264"

    .line 105
    :goto_68
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 108
    move-result-object v2

    .line 109
    if-eqz p2, :cond_70

    .line 111
    move-object v4, v0

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move-object v4, v1

    .line 114
    :goto_71
    if-eqz p2, :cond_76

    .line 116
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    .line 118
    goto :goto_78

    .line 119
    :cond_76
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    .line 121
    :goto_78
    move-object v5, v0

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_88

    .line 132
    invoke-static {p1}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIconMirror(Ljava/lang/String;)I

    .line 135
    move-result p1

    .line 136
    goto :goto_8c

    .line 137
    :cond_88
    invoke-static {p1}, Lcom/android/fileexplorer/util/DocHelper;->getDocGridDefaultIcon(Ljava/lang/String;)I

    .line 140
    move-result p1

    .line 141
    :goto_8c
    move v6, p1

    .line 142
    new-instance v7, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;

    .line 144
    invoke-direct {v7, p0, p2}, Lcom/android/fileexplorer/view/DocsGridItemWithFav$1;-><init>(Lcom/android/fileexplorer/view/DocsGridItemWithFav;Z)V

    .line 147
    move-object v3, p3

    .line 148
    invoke-virtual/range {v2 .. v7}, Lcom/android/fileexplorer/model/FileIconHelper;->loadDocSnapshot(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;Landroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    .line 151
    return-void
.end method

.method private setIfShowBackground(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_15

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    .line 15
    const v0, 0x7f080149

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    goto :goto_24

    .line 22
    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    .line 24
    const v0, 0x7f08014a

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    goto :goto_24

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    :goto_24
    return-void
.end method

.method private showSnapshot(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    .line 3
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move v3, v1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v3, v2

    .line 11
    :goto_a
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    .line 16
    if-eqz p1, :cond_12

    .line 18
    move v1, v2

    .line 19
    :cond_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    .line 24
    if-eqz v0, :cond_32

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 32
    if-eqz v1, :cond_32

    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 37
    if-eqz p1, :cond_29

    .line 39
    const-string p1, "121:67"

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    const-string p1, "104:128"

    .line 44
    :goto_2b
    iput-object p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->G:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_32
    return-void
.end method


# virtual methods
.method public getDocImageView()Landroid/widget/ImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_16

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    .line 22
    return-object v0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public onBind(Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 4

    .line 1
    if-nez p1, :cond_b

    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-direct {p0, p2, p3, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V

    .line 15
    return-void
.end method

.method public onBindWithFileItem(Lcom/android/fileexplorer/dao/file/FileItem;ZZ)V
    .registers 4

    .line 1
    if-nez p1, :cond_12

    .line 3
    const-string p1, "DocsGridItemWithFav"

    .line 5
    const-string p2, "onBindWithFileItem fileItem is null"

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const/4 p1, 0x4

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p2, p3, p1}, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->onBindDocs(ZZLcom/android/fileexplorer/model/FileInfo;)V

    .line 26
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a01e3

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    .line 13
    const v0, 0x7f0a0186

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFileNameTextView:Landroid/widget/TextView;

    .line 24
    const v0, 0x1020001

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/CheckBox;

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    .line 35
    const v0, 0x7f0a02a5

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mModifyTime:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0174

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 55
    const v0, 0x7f0a0142

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mNormalSnapshot:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0a0143

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/ImageView;

    .line 75
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mPPTSnapshot:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0a0277

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mSelectedBg:Landroid/view/View;

    .line 86
    const/4 v0, 0x1

    .line 87
    new-array v0, v0, [Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mImageParent:Landroid/view/View;

    .line 91
    const/4 v2, 0x0

    .line 92
    aput-object v1, v0, v2

    .line 94
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 101
    move-result-object v0

    .line 102
    new-array v1, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 104
    const/high16 v3, 0x3f800000  # 1.0f

    .line 106
    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 109
    move-result-object v0

    .line 110
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 112
    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 115
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->detector:Landroid/view/GestureDetector;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->detector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public updateViewByCheckedStatueChange(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_d

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/DocsGridItemWithFav;->mCheckBox:Landroid/widget/CheckBox;

    .line 5
    if-eqz p1, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const/16 p1, 0x8

    .line 11
    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_d
    return-void
.end method
