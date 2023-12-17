.class public final synthetic Lmiuix/appcompat/app/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/appcompat/app/a;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/a;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/app/a;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lmiuix/appcompat/app/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/AppDelegate;

    invoke-static {v0}, Lmiuix/appcompat/app/AppDelegate;->a(Lmiuix/appcompat/app/AppDelegate;)V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lmiuix/appcompat/app/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->b(Lmiuix/appcompat/app/AlertController;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lmiuix/appcompat/app/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/ActionBarDelegateImpl;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBarDelegate;->invalidateOptionsMenu()V

    return-void

    :goto_1e
    iget-object v0, p0, Lmiuix/appcompat/app/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lmiuix/appcompat/app/AlertDialog;->c(Lmiuix/appcompat/app/AlertDialog;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
