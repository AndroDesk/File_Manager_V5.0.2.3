.class Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;
.super Ljava/lang/Object;
.source "ViewLargeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;->val$position:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;->this$0:Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->access$000(Lcom/android/fileexplorer/adapter/ViewLargeAdapter;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$4;->val$position:I

    .line 17
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter$OnViewTapListener;->onViewTap(Landroid/view/View;I)V

    .line 20
    :cond_13
    return-void
.end method
