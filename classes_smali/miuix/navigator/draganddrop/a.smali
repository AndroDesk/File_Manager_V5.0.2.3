.class public final synthetic Lmiuix/navigator/draganddrop/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/navigator/draganddrop/DragHelper;


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/draganddrop/DragHelper;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/navigator/draganddrop/a;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/navigator/draganddrop/a;->b:Lmiuix/navigator/draganddrop/DragHelper;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/navigator/draganddrop/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object v0, p0, Lmiuix/navigator/draganddrop/a;->b:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->a(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void

    :pswitch_c  #0x0
    iget-object v0, p0, Lmiuix/navigator/draganddrop/a;->b:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->b(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void

    :goto_12
    iget-object v0, p0, Lmiuix/navigator/draganddrop/a;->b:Lmiuix/navigator/draganddrop/DragHelper;

    invoke-static {v0}, Lmiuix/navigator/draganddrop/DragHelper;->e(Lmiuix/navigator/draganddrop/DragHelper;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
