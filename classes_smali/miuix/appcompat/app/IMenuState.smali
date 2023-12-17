.class public interface abstract Lmiuix/appcompat/app/IMenuState;
.super Ljava/lang/Object;
.source "IMenuState.java"


# static fields
.field public static final TYPE_ACTION_MODE:I

.field public static final TYPE_RESIDENT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/appcompat/app/IMenuState;->TYPE_ACTION_MODE:I

    return-void
.end method


# virtual methods
.method public abstract onMenuStateChanged(II)V
.end method
