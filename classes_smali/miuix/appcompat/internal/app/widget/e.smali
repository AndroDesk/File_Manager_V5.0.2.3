.class public final synthetic Lmiuix/appcompat/internal/app/widget/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/e;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/e;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->showEndOverflowMenu()Z

    return-void

    :pswitch_c  #0x3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->a(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void

    :pswitch_12  #0x2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->d(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void

    :pswitch_18  #0x1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->c(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->e(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void

    :goto_24
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/e;->b:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->b(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
