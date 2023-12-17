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
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Li1/a;-><init>()V

    .line 4
    const-string v0, "ViewLargeAdapter"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 17
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mOnViewTapListener:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 19
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mOnViewTapListener:Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setupImageView(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    .line 4
    return-void
.end method

.method private clearImage(Landroid/view/View;)V
    .registers 3

    .line 1
    const v0, 0x7f0a0361

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->recycle()V

    .line 15
    :cond_e
    const v0, 0x7f0a01aa

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/ImageView;

    .line 24
    if-eqz p1, :cond_1d

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_1d
    return-void
.end method

.method private loadGifImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
    .registers 14

    .line 1
    new-instance v7, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p1

    .line 9
    move v6, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$3;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/widget/ProgressBar;Landroid/view/View;Landroid/view/View;I)V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    new-array p2, p2, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method private loadImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V
    .registers 14

    .line 1
    new-instance v7, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;

    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p1

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$2;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Lcom/android/fileexplorer/model/FileWithExt;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getIOExecutors()Ljava/util/concurrent/ExecutorService;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    new-array p2, p2, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method private setupImageView(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
    .registers 13

    .line 1
    const/high16 v0, 0x41000000  # 8.0f

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 6
    const/high16 v0, 0x40000000  # 2.0f

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    .line 17
    const-string v1, "new"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_22

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mFrom:Ljava/lang/String;

    .line 27
    const-string v1, "local"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3f

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 41
    const v2, 0x7f0707f3

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f0707f2

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setInitSize(Landroid/content/Context;II)V

    .line 64
    :cond_3f
    const/4 v0, 0x2

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setDoubleTapZoomStyle(I)V

    .line 68
    new-instance v0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;

    .line 70
    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance p2, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;

    .line 78
    move-object v1, p2

    .line 79
    move-object v2, p0

    .line 80
    move-object v3, p3

    .line 81
    move-object v4, p4

    .line 82
    move-object v5, p5

    .line 83
    move-object v6, p1

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V

    .line 87
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setOnImageEventListener(Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    .line 1
    if-eqz p3, :cond_25

    .line 3
    check-cast p3, Landroid/view/View;

    .line 5
    const v0, 0x7f0a01aa

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 20
    if-eqz v1, :cond_1a

    .line 22
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 27
    :cond_1a
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->clearImage(Landroid/view/View;)V

    .line 38
    :cond_25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    move-result p1

    .line 44
    if-lt p2, p1, :cond_2e

    .line 46
    return-void

    .line 47
    :cond_2e
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    .line 49
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/fileexplorer/model/FileWithExt;

    .line 55
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    const-string p3, "/FileExplorer/.safebox"

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_43

    .line 67
    return-void

    .line 68
    :cond_43
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_4e

    .line 78
    return-void

    .line 79
    :cond_4e
    invoke-virtual {p1}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateLockPath(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 89
    new-instance p3, Ljava/io/File;

    .line 91
    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {p2, p3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->operationReEncryptFile(Landroid/app/Activity;Ljava/io/File;)I

    .line 97
    move-result p1

    .line 98
    const/4 p2, 0x3

    .line 99
    if-ne p1, p2, :cond_6e

    .line 101
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 103
    new-instance p2, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;

    .line 105
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$6;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    :cond_6e
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d00a2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a0310

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    move-object v7, v1

    .line 23
    check-cast v7, Landroid/widget/ProgressBar;

    .line 25
    const v1, 0x7f0a045e

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v8

    .line 32
    new-instance v1, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;

    .line 34
    invoke-direct {v1, p0, p2}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$1;-><init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V

    .line 37
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    .line 42
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    move-object v5, v1

    .line 47
    check-cast v5, Lcom/android/fileexplorer/model/FileWithExt;

    .line 49
    invoke-virtual {v5}, Lcom/android/fileexplorer/model/FileWithExt;->getExtension()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    const-string v2, "gif"

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_43

    .line 61
    move-object v3, p0

    .line 62
    move-object v4, v0

    .line 63
    move v6, p2

    .line 64
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadGifImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    .line 67
    goto :goto_49

    .line 68
    :cond_43
    move-object v3, p0

    .line 69
    move-object v4, v0

    .line 70
    move v6, p2

    .line 71
    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->loadImage(Landroid/view/View;Lcom/android/fileexplorer/model/FileWithExt;ILandroid/widget/ProgressBar;Landroid/view/View;)V

    .line 74
    :goto_49
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mInstantiateViews:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 19
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->clearImage(Landroid/view/View;)V

    .line 22
    goto :goto_6

    .line 23
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

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->mImageList:Ljava/util/List;

    .line 3
    return-void
.end method
