.class public Lmiuix/theme/token/BlurToken$Effect;
.super Ljava/lang/Object;
.source "BlurToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/token/BlurToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Effect"
.end annotation


# static fields
.field public static final DEFAULT:I

.field public static final EXTRA_THIN:I

.field public static final HEAVY:I

.field public static final THIN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dd4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/token/BlurToken$Effect;->DEFAULT:I

    const v0, 0x92d88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/token/BlurToken$Effect;->EXTRA_THIN:I

    const v0, 0x92ddc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/token/BlurToken$Effect;->HEAVY:I

    const v0, 0x92da2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/token/BlurToken$Effect;->THIN:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
