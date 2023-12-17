.class Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;
.super Ljava/lang/Object;
.source "BounceBackViewPager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

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

    iget-object p1, p0, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect$1;->this$1:Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;->access$100(Lcom/android/fileexplorer/view/BounceBackViewPager$OverscrollEffect;F)V

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
