.class public final enum Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum ETAG:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum ID:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field public static final enum UNIQUE_KEY:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->NONE:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    new-instance v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v3, "ETAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->ETAG:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    new-instance v3, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v5, "ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->ID:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    new-instance v5, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const-string v7, "UNIQUE_KEY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->UNIQUE_KEY:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->$VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 2

    const-class v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 1

    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->$VALUES:[Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object v0
.end method
