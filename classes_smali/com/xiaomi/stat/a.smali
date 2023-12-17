.class public final Lcom/xiaomi/stat/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z = false

.field public static final b:Ljava/lang/String; = "com.xiaomi.stat"

.field public static final c:Ljava/lang/String; = "release"

.field public static final d:Ljava/lang/String; = "main"

.field public static final e:I

.field public static final f:Ljava/lang/String; = "1.0"

.field public static final g:Ljava/lang/String; = "3.0.16"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
