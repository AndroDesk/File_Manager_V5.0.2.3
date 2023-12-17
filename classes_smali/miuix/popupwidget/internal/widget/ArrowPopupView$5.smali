.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V
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
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 13

    .line 1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 12
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1a

    .line 18
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 20
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$800(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/animation/AnimatorSet;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 29
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2b

    .line 35
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 37
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 44
    :cond_2b
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 46
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 52
    invoke-static {v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;

    .line 55
    const/4 v0, 0x2

    .line 56
    new-array v0, v0, [F

    .line 58
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 60
    invoke-static {v1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$900(Lmiuix/popupwidget/internal/widget/ArrowPopupView;[F)V

    .line 63
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 65
    const v4, 0x3f19999a  # 0.6f

    .line 68
    const/high16 v5, 0x3f800000  # 1.0f

    .line 70
    const v6, 0x3f19999a  # 0.6f

    .line 73
    const/high16 v7, 0x3f800000  # 1.0f

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    aget v9, v0, v3

    .line 79
    const/4 v10, 0x0

    .line 80
    aget v11, v0, v2

    .line 82
    move-object v3, v1

    .line 83
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 86
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 88
    const/4 v3, 0x0

    .line 89
    const/high16 v4, 0x3f800000  # 1.0f

    .line 91
    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 94
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_6e

    .line 100
    const-wide/16 v3, 0x64

    .line 102
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    const-wide/16 v3, 0x118

    .line 107
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 110
    goto :goto_79

    .line 111
    :cond_6e
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 113
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 116
    move-result-object v3

    .line 117
    const-wide/16 v4, 0x0

    .line 119
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 122
    :goto_79
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 124
    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 133
    invoke-static {v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 142
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 148
    invoke-static {v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$1000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/Animation$AnimationListener;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 155
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 157
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 160
    move-result-object v0

    .line 161
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 163
    const/high16 v3, 0x3fc00000  # 1.5f

    .line 165
    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 171
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$5;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 173
    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$000(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/view/animation/AnimationSet;

    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    return v2
.end method
