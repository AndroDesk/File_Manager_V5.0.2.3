.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "ResponsiveActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
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
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 3
    const-string v0, "target"

    .line 5
    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 12
    move-result p2

    .line 13
    invoke-static {p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$102(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;I)I

    .line 16
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$2;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 21
    return-void
.end method
