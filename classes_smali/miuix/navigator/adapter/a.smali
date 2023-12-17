.class public final synthetic Lmiuix/navigator/adapter/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/navigator/adapter/CategoryImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/adapter/CategoryImpl;I)V
    .registers 3

    iput p2, p0, Lmiuix/navigator/adapter/a;->a:I

    iput-object p1, p0, Lmiuix/navigator/adapter/a;->b:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/adapter/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/navigator/adapter/a;->b:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-static {v0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->a(Lmiuix/navigator/adapter/CategoryImpl;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object v0, p0, Lmiuix/navigator/adapter/a;->b:Lmiuix/navigator/adapter/CategoryImpl;

    invoke-static {v0, p1}, Lmiuix/navigator/adapter/CategoryImpl;->b(Lmiuix/navigator/adapter/CategoryImpl;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
