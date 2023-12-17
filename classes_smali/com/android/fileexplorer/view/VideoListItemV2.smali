.class public Lcom/android/fileexplorer/view/VideoListItemV2;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "VideoListItemV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoListItem"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDuration:Landroid/widget/TextView;

.field private mFavTag:Landroid/widget/ImageView;

.field private mFileNameTV:Landroid/widget/TextView;

.field private mFileSizeTV:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/FileInfo;ZZZ)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-nez p1, :cond_d

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mImage:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mDuration:Landroid/widget/TextView;

    .line 23
    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    .line 25
    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/VideoUtils;->getFormattedVideoLength(J)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFileSizeTV:Landroid/widget/TextView;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 41
    invoke-static {v5, v6}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v5, " | "

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 55
    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/DateUtils;->formatDateShort(J)Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFileNameTV:Landroid/widget/TextView;

    .line 71
    if-eqz v3, :cond_4d

    .line 73
    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 75
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_4d
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    if-eqz p2, :cond_52

    .line 82
    move v1, v2

    .line 83
    :cond_52
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mCheckBox:Landroid/widget/CheckBox;

    .line 88
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 91
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFavTag:Landroid/widget/ImageView;

    .line 93
    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 95
    if-eqz p3, :cond_61

    .line 97
    goto :goto_63

    .line 98
    :cond_61
    const/16 v2, 0x8

    .line 100
    :goto_63
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mImage:Landroid/widget/ImageView;

    .line 105
    if-eqz p4, :cond_6c

    .line 107
    const-string v0, "mp4"

    .line 109
    :cond_6c
    const p3, 0x7f080129

    .line 112
    invoke-static {p1, p2, v0, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 115
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
    const v0, 0x7f0a0182

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mImage:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0a0486

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mDuration:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0173

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFavTag:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0a0186

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFileNameTV:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a018c

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 84
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mFileSizeTV:Landroid/widget/TextView;

    .line 86
    const v0, 0x1020001

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/CheckBox;

    .line 95
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemV2;->mCheckBox:Landroid/widget/CheckBox;

    .line 97
    return-void
.end method
