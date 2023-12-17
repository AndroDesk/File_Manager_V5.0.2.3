.class public interface abstract Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "OnFloatingActivityCallback.java"


# static fields
.field public static final TYPE_EVENT_CODE_BASE:I

.field public static final TYPE_FROM_ACTIONBAR_BUTTON_RETURN:I

.field public static final TYPE_FROM_BACKGROUND:I

.field public static final TYPE_FROM_PHYSICAL_RETURN:I

.field public static final TYPE_FROM_TOP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->TYPE_EVENT_CODE_BASE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->TYPE_FROM_ACTIONBAR_BUTTON_RETURN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->TYPE_FROM_BACKGROUND:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->TYPE_FROM_PHYSICAL_RETURN:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/floatingactivity/OnFloatingActivityCallback;->TYPE_FROM_TOP:I

    return-void
.end method


# virtual methods
.method public abstract onFinish(I)Z
.end method
