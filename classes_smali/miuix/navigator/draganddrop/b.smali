.class public final synthetic Lmiuix/navigator/draganddrop/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/draganddrop/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    iget v0, p0, Lmiuix/navigator/draganddrop/b;->a:I

    packed-switch v0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {p1}, Lmiuix/navigator/draganddrop/DragHelper;->d(F)F

    move-result p1

    return p1

    :goto_b
    invoke-static {p1}, Lmiuix/navigator/draganddrop/DragHelper;->c(F)F

    move-result p1

    return p1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
