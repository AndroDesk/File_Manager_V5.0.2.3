.class public final synthetic Lmiuix/appcompat/internal/app/widget/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/a;->a:I

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/a;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->a(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void

    :goto_16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/a;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->b(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
