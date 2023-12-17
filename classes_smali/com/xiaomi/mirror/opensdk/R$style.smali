.class public final Lcom/xiaomi/mirror/opensdk/R$style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/opensdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final MiuiDragShadowStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f1b2cf1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$style;->MiuiDragShadowStyle:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
