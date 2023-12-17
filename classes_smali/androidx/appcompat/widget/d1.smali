.class public final synthetic Landroidx/appcompat/widget/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/e1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/widget/e1;I)V
    .registers 3

    iput p2, p0, Landroidx/appcompat/widget/d1;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/appcompat/widget/d1;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/e1;->c(Z)V

    return-void

    :goto_d
    iget-object v0, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/e1;->a()V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
