.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lc1/c$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/activity/c;->a:I

    .line 3
    iput-object p1, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget v0, p0, Landroidx/activity/c;->a:I

    .line 3
    packed-switch v0, :pswitch_data_22

    .line 6
    goto :goto_18

    .line 7
    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 11
    invoke-static {v0}, Landroidx/fragment/app/FragmentActivity;->f(Landroidx/fragment/app/FragmentActivity;)Landroid/os/Bundle;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :pswitch_f  #0x0
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    .line 18
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 20
    invoke-static {v0}, Landroidx/activity/ComponentActivity;->b(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;

    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :goto_18
    iget-object v0, p0, Landroidx/activity/c;->b:Ljava/lang/Object;

    .line 27
    check-cast v0, Landroidx/fragment/app/FragmentManager;

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->b0()Landroid/os/Bundle;

    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
