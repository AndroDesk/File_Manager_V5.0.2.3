.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeContextViewsShowHideWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field public final synthetic val$animateToVisible:Z

.field public final synthetic val$contentAnimTransFrom:I

.field public final synthetic val$contentAnimTransTo:I

.field public final synthetic val$countDownAnimations:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

.field public final synthetic val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field public final synthetic val$primaryHeight:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;ZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 7
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$primaryHeight:I

    .line 9
    iput p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    .line 11
    iput p6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    .line 13
    iput-object p7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$countDownAnimations:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    .line 15
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1a

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 11
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 24
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    .line 27
    :cond_1a
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    .line 7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$countDownAnimations:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    .line 9
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

    .line 12
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 3
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 20
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$primaryHeight:I

    .line 22
    int-to-float v0, v0

    .line 23
    sub-float/2addr v0, p1

    .line 24
    float-to-int v0, v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    .line 29
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    .line 31
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    .line 33
    if-ne p2, v0, :cond_25

    .line 35
    const/high16 p1, 0x3f800000  # 1.0f

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    int-to-float v1, v0

    .line 39
    sub-float/2addr p1, v1

    .line 40
    sub-int/2addr p2, v0

    .line 41
    int-to-float p2, p2

    .line 42
    div-float/2addr p1, p2

    .line 43
    :goto_2a
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 45
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    .line 47
    invoke-virtual {p2, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    .line 50
    return-void
.end method
