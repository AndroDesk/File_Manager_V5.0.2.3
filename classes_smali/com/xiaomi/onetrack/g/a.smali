.class public Lcom/xiaomi/onetrack/g/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String; = "data"

.field public static final c:Ljava/lang/String; = "msg"

.field public static final d:Ljava/lang/String; = "code"

.field public static final e:Ljava/lang/String; = "hash"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/onetrack/g/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
