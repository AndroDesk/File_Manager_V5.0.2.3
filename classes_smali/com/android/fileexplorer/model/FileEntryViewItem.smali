.class public Lcom/android/fileexplorer/model/FileEntryViewItem;
.super Lcom/android/fileexplorer/model/category/BaseItem;
.source "FileEntryViewItem.java"


# instance fields
.field private mArrowRightIv:Landroid/widget/ImageView;

.field private mFileNameFtv:Landroid/widget/TextView;

.field private mFileSizeTv:Landroid/widget/TextView;

.field private mIconIv:Landroid/widget/ImageView;

.field private mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/category/BaseItem;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    const p2, 0x7f032c13

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    const p2, 0x7f032c1c

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    const p2, 0x7f032c10

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileNameFtv:Landroid/widget/TextView;

    const p2, 0x7f032ebb

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/CircleProgressBar;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    const p2, 0x7f032c4d

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_57

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_57
    return-void
.end method

.method public static newInstance(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Lcom/android/fileexplorer/model/FileEntryViewItem;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/model/FileEntryViewItem;

    const v1, 0x7f0d006d

    const/4 v2, 0x0

    invoke-static {p0, v1, p0, v2}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/model/FileEntryViewItem;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/model/FileEntryEntity;)V
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileNameFtv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_49

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0701ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    iget p1, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_12e

    :cond_49
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    move-result v1

    const-string v4, "/"

    const v5, 0x7f0701ee

    if-eqz v1, :cond_e8

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x7f080629

    aput v7, v6, v3

    new-array v7, v5, [I

    const v8, 0x7f08062a

    aput v8, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    iget-wide v8, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    sub-long v8, v6, v8

    long-to-float v1, v8

    const/high16 v8, 0x42c80000  # 100.0f

    mul-float/2addr v1, v8

    long-to-float v6, v6

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-virtual {v6, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    iget-wide v8, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f11038c

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12e

    :cond_e8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setMinimumHeight(I)V

    iget-wide v5, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->availableSize:J

    invoke-static {v5, v6}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->fileSize:J

    invoke-static {v4, v5}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    iget p1, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mProgress:Lmiuix/androidbasewidget/widget/CircleProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mFileSizeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/model/FileEntryViewItem;->mArrowRightIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12e
    return-void
.end method
