.class public final synthetic Landroidx/appcompat/app/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm0/h$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/app/q;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/q;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/appcompat/app/p;->a:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/p;->b:Landroidx/appcompat/app/q;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/app/p;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object v0, p0, Landroidx/appcompat/app/p;->b:Landroidx/appcompat/app/q;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/q;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
