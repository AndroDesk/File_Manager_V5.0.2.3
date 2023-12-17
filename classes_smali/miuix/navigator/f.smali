.class public final synthetic Lmiuix/navigator/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    iput p2, p0, Lmiuix/navigator/f;->a:I

    iput-object p1, p0, Lmiuix/navigator/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lmiuix/navigator/f;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object v0, p0, Lmiuix/navigator/f;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    return-void

    :pswitch_e  #0x1
    iget-object v0, p0, Lmiuix/navigator/f;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->openNavigation()V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lmiuix/navigator/f;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout;

    invoke-virtual {v0}, Lmiuix/navigator/MiuixNavigationLayout;->closeNavigation()V

    return-void

    :goto_1e
    iget-object v0, p0, Lmiuix/navigator/f;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;

    invoke-static {v0}, Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;->b(Lmiuix/navigator/MiuixNavigationLayout$AnimHelper;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
