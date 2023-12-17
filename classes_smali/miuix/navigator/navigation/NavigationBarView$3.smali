.class Lmiuix/navigator/navigation/NavigationBarView$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/NavigationBarView;->hide(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/NavigationBarView;


# direct methods
.method public constructor <init>(Lmiuix/navigator/navigation/NavigationBarView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$3;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$3;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9
    return-void
.end method
