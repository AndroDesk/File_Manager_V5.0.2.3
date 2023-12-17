.class public final synthetic Lmiuix/appcompat/internal/app/widget/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/d;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/d;->b:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/d;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/d;->b:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->a(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    return-void

    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/d;->b:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->updateBottomMenuMode()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
