.class public final synthetic Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/fragment/app/t;->a:I

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/t;->a:I

    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_4c

    .line 7
    goto :goto_3b

    .line 8
    :pswitch_7  #0x2
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    .line 10
    check-cast p1, Ld0/h;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_16

    .line 18
    iget-boolean p1, p1, Ld0/h;->a:Z

    .line 20
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->m(ZZ)V

    .line 23
    :cond_16
    return-void

    .line 24
    :pswitch_17  #0x1
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2c

    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    const/16 v2, 0x50

    .line 40
    if-ne p1, v2, :cond_2c

    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->l(Z)V

    .line 45
    :cond_2c
    return-void

    .line 46
    :pswitch_2d  #0x0
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    .line 48
    check-cast p1, Landroid/content/res/Configuration;

    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3a

    .line 56
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->h(Landroid/content/res/Configuration;Z)V

    .line 59
    :cond_3a
    return-void

    .line 60
    :goto_3b
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    .line 62
    check-cast p1, Ld0/n;

    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4a

    .line 70
    iget-boolean p1, p1, Ld0/n;->a:Z

    .line 72
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->r(ZZ)V

    .line 75
    :cond_4a
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_17  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method
