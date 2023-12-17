.class public final synthetic Landroidx/fragment/app/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .registers 3

    iput p2, p0, Landroidx/fragment/app/t;->a:I

    iput-object p1, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Landroidx/fragment/app/t;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    goto :goto_3b

    :pswitch_7  #0x2
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Ld0/h;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean p1, p1, Ld0/h;->a:Z

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->m(ZZ)V

    :cond_16
    return-void

    :pswitch_17  #0x1
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x50

    if-ne p1, v2, :cond_2c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->l(Z)V

    :cond_2c
    return-void

    :pswitch_2d  #0x0
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->h(Landroid/content/res/Configuration;Z)V

    :cond_3a
    return-void

    :goto_3b
    iget-object v0, p0, Landroidx/fragment/app/t;->b:Landroidx/fragment/app/FragmentManager;

    check-cast p1, Ld0/n;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-boolean p1, p1, Ld0/n;->a:Z

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->r(ZZ)V

    :cond_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_17  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method
