.class public final Lcom/android/fileexplorer/R$raw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static final guide_cn:I

.field public static final number_picker_value_change:I

.field public static final xiaomi_static_config:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f192d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/R$raw;->guide_cn:I

    const v0, 0x7f192d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/R$raw;->number_picker_value_change:I

    const v0, 0x7f192d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/R$raw;->xiaomi_static_config:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
