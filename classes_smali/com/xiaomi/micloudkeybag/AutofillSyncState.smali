.class public Lcom/xiaomi/micloudkeybag/AutofillSyncState;
.super Ljava/lang/Object;
.source "AutofillSyncState.java"


# static fields
.field public static final SYNC_DISABLE:I

.field public static final SYNC_OFF:I

.field public static final SYNC_ON:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/AutofillSyncState;->SYNC_DISABLE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/AutofillSyncState;->SYNC_OFF:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudkeybag/AutofillSyncState;->SYNC_ON:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
