.class public Lcom/android/fileexplorer/adapter/ViewLargeAdapter;
.super Li1/a;
.source "ViewLargeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private final mFrom:Ljava/lang/String;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantiateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnViewTapListener:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;)V
    .registers 5

    invoke-direct {p0}, Li1/a;-><init>()V

    const-string v0, "ViewLargeAdapter"

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mOnViewTapListener:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mOnViewTapListener:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setupImageView(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    return-void
.end method

.method private clearImage(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f032ef7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->recycle()V

    :cond_12
    const v0, 0x7f032c3c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    return-void
.end method

.method private loadGifImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
    .registers 14

    new-instance v7, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;I)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
    .registers 14

    new-instance v7, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setupImageView(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 13

    const/high16 v0, 0x41000000  # 8.0f

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMaxScale(F)V

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setInitSize(Landroid/content/Context;II)V

    :cond_3f
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setOnImageEventListener(Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    if-eqz p3, :cond_29

    check-cast p3, Landroid/view/View;

    const v0, 0x7f032c3c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1e
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->clearImage(Landroid/view/View;)V

    :cond_29
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_32

    return-void

    :cond_32
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/FileExplorer/.safebox"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_47

    return-void

    :cond_47
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    move-result-object p1

    if-nez p1, :cond_52

    return-void

    :cond_52
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_72

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance p2, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_72
    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042d34

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f032e86

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    const v1, 0x7f0329c8

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v5}, Lcom/android/fileexplorer/model/FileWithExt;->getExtension()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move-object v3, p0

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadGifImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    goto :goto_55

    :cond_4f
    move-object v3, p0

    move-object v4, v0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    :goto_55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->clearImage(Landroid/view/View;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    return-void
.end method
