.class public final enum Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
.super Ljava/lang/Enum;
.source "TransferTaskItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/ui/bean/TransferTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

.field public static final enum DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

.field public static final enum UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    const-string v1, "UPLOAD"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 11
    new-instance v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 13
    const-string v3, "DOWNLOAD"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    return-object v0

    .line 14
    :cond_d
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1a

    .line 26
    return-object v0

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "unkonwn type name. "

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    .line 1
    const-class v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-virtual {v0}, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 9
    return-object v0
.end method
