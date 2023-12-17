.class Lmiuix/navigator/MiuixNavigationLayout$3;
.super Ljava/lang/Object;
.source "MiuixNavigationLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/MiuixNavigationLayout;->doMask(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/MiuixNavigationLayout;

.field public final synthetic val$mask:Landroid/view/View;

.field public final synthetic val$visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    iput-object p2, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->val$mask:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->this$0:Lmiuix/navigator/MiuixNavigationLayout;

    iget-object v0, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->val$mask:Landroid/view/View;

    iget-boolean v1, p0, Lmiuix/navigator/MiuixNavigationLayout$3;->val$visible:Z

    invoke-static {p1, v0, v1}, Lmiuix/navigator/MiuixNavigationLayout;->access$2300(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;Z)V

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
