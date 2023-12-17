.class public Lcom/android/fileexplorer/view/VideoListItem;
.super Landroid/widget/FrameLayout;
.source "VideoListItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoListItem"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDuration:Landroid/widget/TextView;

.field private mFavTag:Landroid/widget/ImageView;

.field private mFileNameTV:Landroid/widget/TextView;

.field private mFileSizeTV:Landroid/widget/TextView;

.field private mImage:Lcom/android/fileexplorer/view/RoundedImageView;

.field private mModifiedTimeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/FileInfo;ZZZ)V
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-nez p1, :cond_d

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 21
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    .line 23
    if-eqz v3, :cond_26

    .line 25
    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 27
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/VideoUtils;->getFormattedVideoLength(J)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    .line 36
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_26
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileSizeTV:Landroid/widget/TextView;

    .line 41
    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 43
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileNameTV:Landroid/widget/TextView;

    .line 52
    if-eqz v3, :cond_3a

    .line 54
    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3a
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 61
    if-eqz p2, :cond_3f

    .line 63
    move v1, v2

    .line 64
    :cond_3f
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 69
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mModifiedTimeTV:Landroid/widget/TextView;

    .line 74
    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 76
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/DateUtils;->formatDateShort(J)Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFavTag:Landroid/widget/ImageView;

    .line 85
    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 87
    if-eqz p3, :cond_59

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const/16 v2, 0x8

    .line 92
    :goto_5b
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    .line 97
    if-eqz p4, :cond_64

    .line 99
    const-string v0, "mp4"

    .line 101
    :cond_64
    const p3, 0x7f080129

    .line 104
    invoke-static {p1, p2, v0, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Landroid/view/View;

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p0, v0, v1

    .line 10
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 17
    move-result-object v0

    .line 18
    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 20
    const/high16 v3, 0x3f800000  # 1.0f

    .line 22
    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 25
    move-result-object v0

    .line 26
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 31
    const v0, 0x7f0a01dc

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/fileexplorer/view/RoundedImageView;

    .line 40
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    .line 42
    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 44
    if-nez v0, :cond_38

    .line 46
    const v0, 0x7f0a0486

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    .line 57
    :cond_38
    const v0, 0x7f0a0174

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFavTag:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0a0186

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileNameTV:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a018a

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileSizeTV:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0a02a5

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 99
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mModifiedTimeTV:Landroid/widget/TextView;

    .line 101
    const v0, 0x1020001

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/CheckBox;

    .line 110
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 112
    return-void
.end method
