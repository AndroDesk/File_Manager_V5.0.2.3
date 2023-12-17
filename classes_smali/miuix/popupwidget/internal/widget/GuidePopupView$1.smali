.class Lmiuix/popupwidget/internal/widget/GuidePopupView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCancel:Z

.field public final synthetic this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/internal/widget/GuidePopupView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;->mCancel:Z

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;->mCancel:Z

    .line 3
    if-eqz p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;->this$0:Lmiuix/popupwidget/internal/widget/GuidePopupView;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lmiuix/popupwidget/internal/widget/GuidePopupView;->access$002(Lmiuix/popupwidget/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/GuidePopupView$1;->mCancel:Z

    .line 4
    return-void
.end method
