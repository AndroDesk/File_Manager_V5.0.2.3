.class public final synthetic Landroidx/fragment/app/l;
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
    iput p2, p0, Landroidx/fragment/app/l;->a:I

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/l;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/l;->a:I

    .line 3
    packed-switch v0, :pswitch_data_2e

    .line 6
    goto :goto_1a

    .line 7
    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/lang/Object;

    .line 9
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 11
    check-cast p1, Landroid/content/Intent;

    .line 13
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentActivity;->c(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;)V

    .line 16
    return-void

    .line 17
    :pswitch_10  #0x0
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/lang/Object;

    .line 19
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 21
    check-cast p1, Landroid/content/res/Configuration;

    .line 23
    invoke-static {v0, p1}, Landroidx/fragment/app/FragmentActivity;->d(Landroidx/fragment/app/FragmentActivity;Landroid/content/res/Configuration;)V

    .line 26
    return-void

    .line 27
    :goto_1a
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Ljava/lang/Object;

    .line 29
    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {}, Li0/a;->a()Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 45
    :cond_2c
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
