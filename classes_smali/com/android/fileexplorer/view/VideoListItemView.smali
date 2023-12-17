.class public Lcom/android/fileexplorer/view/VideoListItemView;
.super Lcom/android/fileexplorer/view/ListItemView;
.source "VideoListItemView.java"


# instance fields
.field private mDuration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/ListItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/view/ListItemView;->onFinishInflate()V

    .line 4
    const v0, 0x7f0a0486

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemView;->mDuration:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public setDuration(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoListItemView;->mDuration:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
