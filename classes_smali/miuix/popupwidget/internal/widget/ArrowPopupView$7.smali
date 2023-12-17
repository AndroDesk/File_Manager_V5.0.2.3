.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateShowing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1102(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)I

    .line 16
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 18
    invoke-static {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 28
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, p1

    .line 37
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 39
    invoke-static {v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 46
    move-result v2

    .line 47
    sub-int/2addr v2, p1

    .line 48
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 50
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 57
    move-result v3

    .line 58
    add-int/2addr v3, p1

    .line 59
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$7;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 61
    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/widget/LinearLayout;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 68
    move-result v4

    .line 69
    add-int/2addr v4, p1

    .line 70
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 73
    return-void
.end method
