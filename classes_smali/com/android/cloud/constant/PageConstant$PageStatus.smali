.class public final enum Lcom/android/cloud/constant/PageConstant$PageStatus;
.super Ljava/lang/Enum;
.source "PageConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/constant/PageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/constant/PageConstant$PageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum List:Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum PreLoading:Lcom/android/cloud/constant/PageConstant$PageStatus;

.field public static final enum Refreshing:Lcom/android/cloud/constant/PageConstant$PageStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v1, "Guide"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    new-instance v1, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v3, "PreLoading"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->PreLoading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    new-instance v3, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v5, "Empty"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    new-instance v5, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v7, "Loading"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    new-instance v7, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v9, "Refreshing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/cloud/constant/PageConstant$PageStatus;->Refreshing:Lcom/android/cloud/constant/PageConstant$PageStatus;

    new-instance v9, Lcom/android/cloud/constant/PageConstant$PageStatus;

    const-string v11, "List"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/cloud/constant/PageConstant$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/cloud/constant/PageConstant$PageStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/cloud/constant/PageConstant$PageStatus;->$VALUES:[Lcom/android/cloud/constant/PageConstant$PageStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/constant/PageConstant$PageStatus;
    .registers 2

    const-class v0, Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cloud/constant/PageConstant$PageStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/cloud/constant/PageConstant$PageStatus;
    .registers 1

    sget-object v0, Lcom/android/cloud/constant/PageConstant$PageStatus;->$VALUES:[Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v0}, [Lcom/android/cloud/constant/PageConstant$PageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cloud/constant/PageConstant$PageStatus;

    return-object v0
.end method
