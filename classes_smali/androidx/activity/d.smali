.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lf/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/activity/d;->a:I

    .line 3
    iput-object p1, p0, Landroidx/activity/d;->b:Landroidx/activity/ComponentActivity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    iget v0, p0, Landroidx/activity/d;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/activity/d;->b:Landroidx/activity/ComponentActivity;

    invoke-static {v0, p1}, Landroidx/activity/ComponentActivity;->a(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V

    return-void

    :goto_c
    iget-object v0, p0, Landroidx/activity/d;->b:Landroidx/activity/ComponentActivity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentActivity;->e(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;)V

    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
