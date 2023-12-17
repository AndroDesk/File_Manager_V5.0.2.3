.class Lmiuix/popupwidget/internal/widget/GuidePopupView$3;
.super Ljava/lang/Object;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 12
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 20
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 29
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 31
    const/4 v2, 0x1

    .line 32
    new-array v3, v2, [F

    .line 34
    const/4 v4, 0x0

    .line 35
    const/high16 v5, 0x3f800000  # 1.0f

    .line 37
    aput v5, v3, v4

    .line 39
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 46
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 48
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    .line 51
    move-result-object v0

    .line 52
    const-wide/16 v3, 0x12c

    .line 54
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 59
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 65
    invoke-static {v1}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$300(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 74
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$000(Lmiuix/popupwidget/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 81
    return v2
.end method
