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

    new-instance v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    const-string v1, "UPLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    const-string v3, "DOWNLOAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

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

.method public static get(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    return-object v0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unkonwn type name. "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    const-class v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    return-object p0
.end method

.method public static values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->$VALUES:[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v0}, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    return-object v0
.end method
