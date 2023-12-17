.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setupImageView(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;ILandroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

.field public final synthetic val$errorView:Landroid/view/View;

.field public final synthetic val$imageView:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

.field public final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field public final synthetic val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$imageView:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onImageLoadError(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    .line 9
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void
.end method

.method public onImageLoaded()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method public onMove()V
    .registers 1

    return-void
.end method

.method public onPreviewLoadError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onReady()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method public onTileLoadError(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getTile()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_15

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$imageView:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    .line 22
    :cond_15
    return-void
.end method
