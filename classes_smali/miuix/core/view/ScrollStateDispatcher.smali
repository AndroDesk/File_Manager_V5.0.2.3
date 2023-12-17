.class public interface abstract Lmiuix/core/view/ScrollStateDispatcher;
.super Ljava/lang/Object;
.source "ScrollStateDispatcher.java"


# static fields
.field public static final STATE_DRAGGING:I

.field public static final STATE_IDLE:I

.field public static final STATE_SETTLING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/view/ScrollStateDispatcher;->STATE_DRAGGING:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/view/ScrollStateDispatcher;->STATE_IDLE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/core/view/ScrollStateDispatcher;->STATE_SETTLING:I

    return-void
.end method


# virtual methods
.method public abstract addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V
.end method

.method public abstract removeOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V
.end method
