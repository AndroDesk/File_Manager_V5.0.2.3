.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

.field public final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->val$callBack:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    .line 1
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->val$callBack:Ljava/lang/Runnable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    return-void
.end method
