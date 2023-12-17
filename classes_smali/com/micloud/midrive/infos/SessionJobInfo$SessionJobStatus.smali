.class public final enum Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
.super Ljava/lang/Enum;
.source "SessionJobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/SessionJobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionJobStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public static final enum FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public static final enum ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public static final enum PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public static final enum REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

.field public static final enum SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const-string v1, "ONGOING"

    const/4 v2, 0x0

    const-string v3, "ongoing"

    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    new-instance v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const-string v3, "PAUSE"

    const/4 v4, 0x1

    const-string v5, "pause"

    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    new-instance v3, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const-string v5, "SUCCESS"

    const/4 v6, 0x2

    const-string v7, "success"

    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    new-instance v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    const-string v9, "fail"

    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    new-instance v7, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const-string v9, "REMOVE"

    const/4 v10, 0x4

    const-string v11, "remove"

    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->$VALUES:[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    :cond_2c
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    return-object v0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown status name. "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 2

    const-class v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->$VALUES:[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    return-object v0
.end method
