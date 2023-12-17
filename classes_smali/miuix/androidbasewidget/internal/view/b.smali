.class public final synthetic Lmiuix/androidbasewidget/internal/view/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    iput p2, p0, Lmiuix/androidbasewidget/internal/view/b;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/b;->b:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 5

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-static {v0, p1, p2, p3}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->a(Lmiuix/internal/view/CheckWidgetDrawableAnims;Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-static {v0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->a(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void

    :goto_16
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/b;->b:Ljava/lang/Object;

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-static {v0, p1, p2, p3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->a(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
