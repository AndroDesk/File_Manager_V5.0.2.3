.class public final synthetic Landroidx/appcompat/widget/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/e1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/e1;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/d1;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/d1;->a:I

    .line 3
    packed-switch v0, :pswitch_data_14

    .line 6
    goto :goto_d

    .line 7
    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/e1;->c(Z)V

    .line 13
    return-void

    .line 14
    :goto_d
    iget-object v0, p0, Landroidx/appcompat/widget/d1;->b:Landroidx/appcompat/widget/e1;

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/e1;->a()V

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
