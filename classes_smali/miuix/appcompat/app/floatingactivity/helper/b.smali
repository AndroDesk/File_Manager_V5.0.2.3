.class public final synthetic Lmiuix/appcompat/app/floatingactivity/helper/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V
    .registers 3

    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/b;->a:I

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/b;->b:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/b;->b:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->e(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    return-void

    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/b;->b:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->a(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
