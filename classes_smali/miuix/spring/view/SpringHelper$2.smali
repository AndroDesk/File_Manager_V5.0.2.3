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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/spring/view/SpringHelper;I)V
    .registers 3

    iput-object p1, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-direct {p0, p1, p2}, Lmiuix/spring/view/SpringHelper$AxisHandler;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .registers 2

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->canScrollVertically()Z

    move-result v0

    return v0
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHeight()I

    move-result v0

    return v0
.end method

.method public onFlingReachEdge()V
    .registers 2

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper$2;->this$0:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->vibrate()V

    return-void
.end method
