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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/android/fileexplorer/view/viewlarge/ImageSource;Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    iput-object p5, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$imageView:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadError(Ljava/lang/Exception;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onImageLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$errorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onTileLoadError(Ljava/lang/Exception;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->getTile()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/ImageSource;->tiling(Z)Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$imageView:Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$5;->val$source:Lcom/android/fileexplorer/view/viewlarge/ImageSource;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->setImage(Lcom/android/fileexplorer/view/viewlarge/ImageSource;)V

    :cond_15
    return-void
.end method
