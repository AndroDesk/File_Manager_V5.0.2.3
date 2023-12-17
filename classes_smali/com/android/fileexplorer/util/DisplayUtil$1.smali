.class Lcom/android/fileexplorer/util/DisplayUtil$1;
.super Ljava/lang/Object;
.source "DisplayUtil.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/DisplayUtil;->toggleStatusBarVisibility(Landroid/app/Activity;ZLandroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 5

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p2, p2, p2, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 5
    move-result-object p2

    .line 6
    const/high16 v0, 0x3f800000  # 1.0f

    .line 8
    const v1, 0x3dcccccd  # 0.1f

    .line 11
    invoke-interface {p1, p2, v0, v1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 14
    return-void
.end method
