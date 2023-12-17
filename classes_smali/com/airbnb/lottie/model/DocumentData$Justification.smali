.class public final enum Lcom/airbnb/lottie/model/DocumentData$Justification;
.super Ljava/lang/Enum;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/DocumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Justification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/DocumentData$Justification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum LEFT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public static final enum RIGHT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 3
    const-string v1, "LEFT_ALIGN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->LEFT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 11
    new-instance v1, Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 13
    const-string v3, "RIGHT_ALIGN"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/airbnb/lottie/model/DocumentData$Justification;->RIGHT_ALIGN:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 21
    new-instance v3, Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 23
    const-string v5, "CENTER"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/DocumentData$Justification;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/airbnb/lottie/model/DocumentData$Justification;->CENTER:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 42
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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/DocumentData$Justification;
    .registers 2

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/DocumentData$Justification;
    .registers 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/DocumentData$Justification;->$VALUES:[Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/DocumentData$Justification;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 9
    return-object v0
.end method
