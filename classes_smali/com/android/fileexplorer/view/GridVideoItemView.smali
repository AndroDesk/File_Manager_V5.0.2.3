.class public Lcom/android/fileexplorer/view/GridVideoItemView;
.super Lcom/android/fileexplorer/view/GridItemView;
.source "GridVideoItemView.java"


# instance fields
.field private mDuration:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

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

    invoke-super {p0}, Lcom/android/fileexplorer/view/GridItemView;->onFinishInflate()V

    const v0, 0x7f032910

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    return-void
.end method

.method public setDuration(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDurationVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/GridVideoItemView;->mDuration:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_9

    const/4 p1, 0x0

    goto :goto_b

    :cond_9
    const/16 p1, 0x8

    :goto_b
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
