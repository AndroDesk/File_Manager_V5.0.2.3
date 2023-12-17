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

    .line 1
    const-class v0, Lcom/android/fileexplorer/view/GridDocItemView;

    .line 3
    const-string v0, "GridDocItemView"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/view/GridDocItemView;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/GridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 10
    :cond_9
    invoke-super {p0}, Lcom/android/fileexplorer/view/GridItemView;->onFinishInflate()V

    .line 13
    const v0, 0x7f0a017d

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridDocItemView;->mFileExt:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public setExtText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/GridItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    return-void
.end method

.method public showExt(Z)V
    .registers 2

    return-void
.end method
