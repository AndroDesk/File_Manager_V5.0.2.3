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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/FileInfo;ZZZ)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p1, :cond_d

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    if-eqz v3, :cond_26

    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileInfo;->duration:J

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/VideoUtils;->getFormattedVideoLength(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileSizeTV:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileNameTV:Landroid/widget/TextView;

    if-eqz v3, :cond_3a

    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    iget-object v3, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p2, :cond_3f

    move v1, v2

    :cond_3f
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mModifiedTimeTV:Landroid/widget/TextView;

    iget-wide v3, p1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/DateUtils;->formatDateShort(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFavTag:Landroid/widget/ImageView;

    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-eqz p3, :cond_59

    goto :goto_5b

    :cond_59
    const/16 v2, 0x8

    :goto_5b
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    if-eqz p4, :cond_64

    const-string v0, "mp4"

    :cond_64
    const p3, 0x7f080129

    invoke-static {p1, p2, v0, p3}, Lcom/android/fileexplorer/model/FileIconHelper;->setIconByFileInfo(Lcom/android/fileexplorer/model/FileInfo;Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    const v0, 0x7f032c4a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/RoundedImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mImage:Lcom/android/fileexplorer/view/RoundedImageView;

    sget-boolean v0, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-nez v0, :cond_40

    const v0, 0x7f032910

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mDuration:Landroid/widget/TextView;

    :cond_40
    const v0, 0x7f032ce2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFavTag:Landroid/widget/ImageView;

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileNameTV:Landroid/widget/TextView;

    const v0, 0x7f032c1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mFileSizeTV:Landroid/widget/TextView;

    const v0, 0x7f032f33

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mModifiedTimeTV:Landroid/widget/TextView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method
