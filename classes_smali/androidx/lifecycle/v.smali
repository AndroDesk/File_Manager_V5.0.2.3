.class public final synthetic Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lc1/c$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/lifecycle/w;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/w;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/lifecycle/v;->a:I

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/w;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .registers 2

    iget v0, p0, Landroidx/lifecycle/v;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/w;

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/w;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
