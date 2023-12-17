.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final a:Landroidx/lifecycle/e;

.field public final b:Landroidx/lifecycle/k;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/e;Landroidx/lifecycle/k;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 6
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/k;

    .line 8
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    .line 1
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$a;->a:[I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    packed-switch v0, :pswitch_data_40

    .line 12
    goto :goto_37

    .line 13
    :pswitch_c  #0x7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p2, "ON_ANY must not been send by anybody"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :pswitch_14  #0x6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 23
    invoke-interface {v0}, Landroidx/lifecycle/e;->b()V

    .line 26
    goto :goto_37

    .line 27
    :pswitch_1a  #0x5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 29
    invoke-interface {v0}, Landroidx/lifecycle/e;->onStop()V

    .line 32
    goto :goto_37

    .line 33
    :pswitch_20  #0x4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 35
    invoke-interface {v0}, Landroidx/lifecycle/e;->c()V

    .line 38
    goto :goto_37

    .line 39
    :pswitch_26  #0x3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 41
    invoke-interface {v0}, Landroidx/lifecycle/e;->d()V

    .line 44
    goto :goto_37

    .line 45
    :pswitch_2c  #0x2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 47
    invoke-interface {v0}, Landroidx/lifecycle/e;->onStart()V

    .line 50
    goto :goto_37

    .line 51
    :pswitch_32  #0x1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/e;

    .line 53
    invoke-interface {v0}, Landroidx/lifecycle/e;->a()V

    .line 56
    :goto_37
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/k;

    .line 58
    if-eqz v0, :cond_3e

    .line 60
    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/k;->onStateChanged(Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 63
    :cond_3e
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32  #00000001
        :pswitch_2c  #00000002
        :pswitch_26  #00000003
        :pswitch_20  #00000004
        :pswitch_1a  #00000005
        :pswitch_14  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method
