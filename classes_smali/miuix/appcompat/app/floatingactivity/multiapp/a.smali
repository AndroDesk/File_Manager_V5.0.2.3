.class public final synthetic Lmiuix/appcompat/app/floatingactivity/multiapp/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;->b:Lmiuix/appcompat/app/AppCompatActivity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingBrightPanel()V

    return-void

    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/a;->b:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->showFloatingBrightPanel()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
