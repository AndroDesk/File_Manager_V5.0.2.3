.class public final synthetic Lmiuix/navigator/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/navigator/MiuixNavigationLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/navigator/MiuixNavigationLayout;I)V
    .registers 3

    iput p2, p0, Lmiuix/navigator/e;->a:I

    iput-object p1, p0, Lmiuix/navigator/e;->b:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lmiuix/navigator/e;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6  #0x2
    iget-object v0, p0, Lmiuix/navigator/e;->b:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->a(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V

    return-void

    :pswitch_c  #0x1
    iget-object v0, p0, Lmiuix/navigator/e;->b:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->e(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lmiuix/navigator/e;->b:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->b(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V

    return-void

    :goto_18
    iget-object v0, p0, Lmiuix/navigator/e;->b:Lmiuix/navigator/MiuixNavigationLayout;

    invoke-static {v0, p1}, Lmiuix/navigator/MiuixNavigationLayout;->c(Lmiuix/navigator/MiuixNavigationLayout;Landroid/view/View;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
