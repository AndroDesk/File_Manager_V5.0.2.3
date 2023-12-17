.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 10
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 10
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
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 6
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F

    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 12
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 19
    move-result p2

    .line 20
    sub-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 23
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)F

    .line 26
    move-result p2

    .line 27
    div-float/2addr p1, p2

    .line 28
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 30
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I

    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    mul-float/2addr v0, p1

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 40
    move-result v0

    .line 41
    float-to-int v0, v0

    .line 42
    invoke-static {p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I

    .line 45
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 47
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)I

    .line 50
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    mul-float/2addr v0, p1

    .line 53
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$1202(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;I)I

    .line 61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 63
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateCurrentContentInsetInOverlayMode()V

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 72
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->updateCoordinateOffsetView()V

    .line 75
    return-void
.end method
