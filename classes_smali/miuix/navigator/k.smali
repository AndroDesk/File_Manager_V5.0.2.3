.class public final synthetic Lmiuix/navigator/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/k;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/k;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_36

    :pswitch_6  #0x7
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->j(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_c  #0x6
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->e(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_12  #0x5
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->b(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_18  #0x4
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->h(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_1e  #0x3
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->a(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_24  #0x2
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->g(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_2a  #0x1
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->i(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_30  #0x0
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->k(Lmiuix/navigator/SubNavigator;)V

    return-void

    :goto_36
    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {p1}, Lmiuix/navigator/NavigatorImpl;->d(Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
        :pswitch_18  #00000004
        :pswitch_12  #00000005
        :pswitch_c  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
