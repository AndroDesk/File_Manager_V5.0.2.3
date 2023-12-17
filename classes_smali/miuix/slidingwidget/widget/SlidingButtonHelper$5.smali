.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 3
    invoke-static {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$300(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 9
    invoke-static {v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$400(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    .line 12
    move-result v2

    .line 13
    if-lt v1, v2, :cond_10

    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v1, 0x0

    .line 18
    :goto_11
    invoke-static {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z

    .line 21
    return-void
.end method
