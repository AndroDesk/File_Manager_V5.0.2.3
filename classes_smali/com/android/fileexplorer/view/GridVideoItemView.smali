.class public Lcom/android/fileexplorer/view/GridVideoItemView;
.super Lcom/android/fileexplorer/view/GridItemView;
.source "GridVideoItemView.java"


# instance fields
.field private mDuration:Landroid/widget/TextView;


# direct methods
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
    invoke-super {p0}, Lcom/android/fileexplorer/view/GridItemView;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0486

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public setDuration(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setDurationVisible(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p1, 0x8

    .line 12
    :goto_b
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
.end method
