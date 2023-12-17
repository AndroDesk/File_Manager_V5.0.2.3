.class public Lcom/android/fileexplorer/view/StorageInfoPieLayout;
.super Landroid/widget/LinearLayout;
.source "StorageInfoPieLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageInfoPieLayout"


# instance fields
.field private mPercent:Landroid/widget/TextView;

.field private mPie:Lcom/android/fileexplorer/view/PieCircleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/StorageInfoPieLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/StorageInfoPieLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a03e6

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/fileexplorer/view/PieCircleView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/StorageInfoPieLayout;->mPie:Lcom/android/fileexplorer/view/PieCircleView;

    .line 15
    const v0, 0x7f0a03e7

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/view/StorageInfoPieLayout;->mPercent:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public updateProgress(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/StorageInfoPieLayout;->mPie:Lcom/android/fileexplorer/view/PieCircleView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/PieCircleView;->setPiePercent(I)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/StorageInfoPieLayout;->mPercent:Landroid/widget/TextView;

    .line 10
    if-eqz v0, :cond_24

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const p1, 0x7f1103cb

    .line 23
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_24
    return-void
.end method
