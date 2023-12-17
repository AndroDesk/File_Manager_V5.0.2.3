.class public final synthetic Lmiuix/appcompat/internal/app/widget/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;I)V
    .registers 3

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/c;->a:I

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/c;->b:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 6

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/c;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/c;->b:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    invoke-static {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->a(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void

    :goto_c
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/c;->b:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;

    invoke-static {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->c(Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
