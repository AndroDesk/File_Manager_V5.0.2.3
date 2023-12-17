.class public final synthetic Lmiuix/navigator/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/navigator/l;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/navigator/l;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/l;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lmiuix/navigator/l;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {v0, p1}, Lmiuix/navigator/NavigatorImpl;->f(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lmiuix/navigator/l;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    check-cast p1, Lmiuix/navigator/SubNavigator;

    invoke-static {v0, p1}, Lmiuix/navigator/NavigatorImpl;->c(Landroid/os/Bundle;Lmiuix/navigator/SubNavigator;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lmiuix/navigator/l;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    check-cast p1, Lmiuix/navigator/SwitchInfo;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->g(Lmiuix/navigator/MiuixNavigationLayout;Lmiuix/navigator/SwitchInfo;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
