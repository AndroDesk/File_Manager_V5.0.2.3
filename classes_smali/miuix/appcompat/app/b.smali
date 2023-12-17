.class public final synthetic Lmiuix/appcompat/app/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lmiuix/appcompat/app/b;->a:I

    iput-object p2, p0, Lmiuix/appcompat/app/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lmiuix/appcompat/app/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lmiuix/appcompat/app/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/app/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    iget-object v1, p0, Lmiuix/appcompat/app/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->a(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :goto_12
    iget-object v0, p0, Lmiuix/appcompat/app/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/appcompat/app/AlertController$8;

    iget-object v1, p0, Lmiuix/appcompat/app/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController$8;->a(Lmiuix/appcompat/app/AlertController$8;Landroid/view/WindowInsets;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
