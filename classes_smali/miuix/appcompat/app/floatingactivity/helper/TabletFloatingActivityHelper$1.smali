.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->init(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 3
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1e

    .line 10
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 12
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 15
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 17
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 20
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 22
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 25
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-static {p1, v0, v1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$400(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    .line 31
    :cond_1e
    return v0
.end method
