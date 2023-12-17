.class public final synthetic Lmiuix/appcompat/internal/app/widget/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;
.implements Lmiuix/appcompat/internal/app/widget/ActionBarCoordinateListener;


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

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/b;->a:I

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionBarResizing(IFII)V
    .registers 6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-static {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->a(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;IFII)V

    return-void
.end method

.method public final onCountDownComplete()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/b;->a:I

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->b(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
