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

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 3
    const-string v1, "ONGOING"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "ongoing"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 13
    new-instance v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 15
    const-string v3, "PAUSE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "pause"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 25
    new-instance v3, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 27
    const-string v5, "SUCCESS"

    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "success"

    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    sput-object v3, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 37
    new-instance v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 39
    const-string v7, "FAIL"

    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "fail"

    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    sput-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 49
    new-instance v7, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 51
    const-string v9, "REMOVE"

    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "remove"

    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sput-object v7, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 61
    const/4 v9, 0x5

    .line 62
    new-array v9, v9, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 64
    aput-object v0, v9, v2

    .line 66
    aput-object v1, v9, v4

    .line 68
    aput-object v3, v9, v6

    .line 70
    aput-object v5, v9, v8

    .line 72
    aput-object v7, v9, v10

    .line 74
    sput-object v9, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->$VALUES:[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 76
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 3
    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 5
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 14
    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 16
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    return-object v0

    .line 23
    :cond_16
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 25
    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 27
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    return-object v0

    .line 34
    :cond_21
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 36
    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 38
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2c

    .line 44
    return-object v0

    .line 45
    :cond_2c
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 47
    iget-object v1, v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 49
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_37

    .line 55
    return-object v0

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v0, "unknown status name. "

    .line 60
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->$VALUES:[Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method
