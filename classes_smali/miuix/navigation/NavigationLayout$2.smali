.class Lmiuix/navigation/NavigationLayout$2;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigation/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigation/NavigationLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lmiuix/navigation/NavigationLayout;->access$602(Lmiuix/navigation/NavigationLayout;F)F

    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    :cond_42
    return-void
.end method
