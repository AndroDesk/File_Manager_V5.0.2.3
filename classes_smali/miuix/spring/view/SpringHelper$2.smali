.class Lmiuix/spring/view/SpringHelper$2;
.super Lmiuix/spring/view/SpringHelper$AxisHandler;
.source "SpringHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/spring/view/SpringHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/spring/view/SpringHelper;


# direct methods
.method public constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-direct {p0, p1, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public canScroll()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->canScrollVertically()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onFlingReachEdge()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    .line 3
    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    .line 6
    return-void
.end method
