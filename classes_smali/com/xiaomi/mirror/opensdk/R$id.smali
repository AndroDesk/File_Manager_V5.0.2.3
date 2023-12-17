.class public final Lcom/xiaomi/mirror/opensdk/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/opensdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final icon:I

.field public static final tag_mirror_menu_query_listener:I

.field public static final text:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f032c43

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$id;->icon:I

    const v0, 0x7f032e6c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$id;->tag_mirror_menu_query_listener:I

    const v0, 0x7f03299d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/opensdk/R$id;->text:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
