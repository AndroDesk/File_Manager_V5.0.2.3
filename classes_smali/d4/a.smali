.class public final synthetic Ld4/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;I)V
    .registers 3

    iput p2, p0, Ld4/a;->a:I

    iput-object p1, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Ld4/a;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    iget-object v0, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->c(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    return-void

    :pswitch_c  #0x2
    iget-object v0, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->e(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->d(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    return-void

    :pswitch_18  #0x0
    iget-object v0, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->b(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    return-void

    :goto_1e
    iget-object v0, p0, Ld4/a;->b:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;->a(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
