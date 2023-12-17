.class public final synthetic Lmiuix/androidbasewidget/internal/view/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;I)V
    .registers 3

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/a;->a:I

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/a;->b:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 5

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/a;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/a;->b:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-static {v0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->a(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Lmiuix/animation/physics/DynamicAnimation;FF)V

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
