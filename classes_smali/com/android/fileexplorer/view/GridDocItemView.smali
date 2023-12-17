.class public Lcom/android/fileexplorer/view/GridDocItemView;
.super Lcom/android/fileexplorer/view/GridItemView;
.source "GridDocItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFileExt:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/fileexplorer/view/GridDocItemView;

    const-string v0, "GridDocItemView"

    sput-object v0, Lcom/android/fileexplorer/view/GridDocItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_9
    invoke-super {p0}, Lcom/android/fileexplorer/view/GridItemView;->onFinishInflate()V

    const v0, 0x7f032ceb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridDocItemView;->mFileExt:Landroid/widget/TextView;

    return-void
.end method

.method public setExtText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public showExt(Z)V
    .registers 2

    return-void
.end method
