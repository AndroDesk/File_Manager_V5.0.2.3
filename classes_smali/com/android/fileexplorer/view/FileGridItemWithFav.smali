.class public Lcom/android/fileexplorer/view/FileGridItemWithFav;
.super Lcom/android/fileexplorer/view/FileGridItem;
.source "FileGridItemWithFav.java"


# instance fields
.field private mFavoriteTagView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FileGridItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/FileGridItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/FileGridItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZ)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/view/FileGridItemWithFav;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V
    .registers 6

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/android/fileexplorer/view/FileGridItem;->onBind(Landroid/content/Context;Lcom/android/fileexplorer/model/FileInfo;ZZLjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iget-boolean p2, p2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    const/4 p3, 0x0

    const/16 p4, 0x8

    if-eqz p2, :cond_16

    move p5, p3

    goto :goto_17

    :cond_16
    move p5, p4

    :goto_17
    if-eq p1, p5, :cond_22

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/FileGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    if-eqz p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move p3, p4

    :goto_1f
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/FileGridItem;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0174

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/view/FileGridItemWithFav;->mFavoriteTagView:Landroid/view/View;

    .line 13
    return-void
.end method
