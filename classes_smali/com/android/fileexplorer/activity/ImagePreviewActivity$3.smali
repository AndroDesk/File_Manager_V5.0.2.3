.class Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ImagePreviewActivity;->toggleBgView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

.field public final synthetic val$isShow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ImagePreviewActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    iput-boolean p2, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;->this$0:Lcom/android/fileexplorer/activity/ImagePreviewActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ImagePreviewActivity;->access$500(Lcom/android/fileexplorer/activity/ImagePreviewActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/fileexplorer/activity/ImagePreviewActivity$3;->val$isShow:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
