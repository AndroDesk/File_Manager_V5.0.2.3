.class public final enum Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;
.super Ljava/lang/Enum;
.source "PageOfFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/PageOfFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

.field public static final enum DATABASE:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

.field public static final enum NETWORK:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->NETWORK:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    new-instance v1, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    const-string v3, "DATABASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->DATABASE:Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->$VALUES:[Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

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

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->$VALUES:[Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/PageOfFileInfo$DataFrom;

    return-object v0
.end method
