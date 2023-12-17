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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;ZLmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;)V
    .registers 8

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$primaryHeight:I

    iput p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    iput p6, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    iput-object p7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$countDownAnimations:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    :cond_1a
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$countDownAnimations:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->countDown()V

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

    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$overlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$primaryHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->onMenuStateChanged(II)V

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransTo:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$contentAnimTransFrom:I

    if-ne p2, v0, :cond_25

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_2a

    :cond_25
    int-to-float v1, v0

    sub-float/2addr p1, v1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    :goto_2a
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;->val$animateToVisible:Z

    invoke-virtual {p2, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method
