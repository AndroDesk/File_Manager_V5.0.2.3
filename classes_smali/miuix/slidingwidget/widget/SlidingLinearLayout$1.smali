.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewSliding(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
