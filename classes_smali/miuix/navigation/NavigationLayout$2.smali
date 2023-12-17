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
.method public constructor <init>(Lmiuix/navigation/NavigationLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 3
    invoke-static {v0}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_42

    .line 9
    iget-object v0, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 21
    invoke-static {v0, p1}, Lmiuix/navigation/NavigationLayout;->access$602(Lmiuix/navigation/NavigationLayout;F)F

    .line 24
    iget-object p1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 26
    invoke-static {p1}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 36
    invoke-static {v1}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 46
    invoke-static {v2}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 53
    move-result v2

    .line 54
    iget-object v3, p0, Lmiuix/navigation/NavigationLayout$2;->this$0:Lmiuix/navigation/NavigationLayout;

    .line 56
    invoke-static {v3}, Lmiuix/navigation/NavigationLayout;->access$500(Lmiuix/navigation/NavigationLayout;)Landroid/view/View;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 63
    move-result v3

    .line 64
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    .line 67
    :cond_42
    return-void
.end method
