.class public final enum Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
.super Ljava/lang/Enum;
.source "DeliveryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

.field public static final enum USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;


# instance fields
.field private final id:I


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 3
    const-string v1, "DEVELOPER"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 12
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 14
    const-string v4, "USER_SIDELOAD"

    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    .line 20
    sput-object v1, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->USER_SIDELOAD:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 22
    new-instance v4, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 24
    const-string v6, "TEST_DISTRIBUTION"

    .line 26
    const/4 v7, 0x3

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v4, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 32
    new-instance v6, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 34
    const-string v8, "APP_STORE"

    .line 36
    const/4 v9, 0x4

    .line 37
    invoke-direct {v6, v8, v7, v9}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v6, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 42
    new-array v8, v9, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 44
    aput-object v0, v8, v2

    .line 46
    aput-object v1, v8, v3

    .line 48
    aput-object v4, v8, v5

    .line 50
    aput-object v6, v8, v7

    .line 52
    sput-object v8, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    .line 6
    return-void
.end method

.method public static determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .registers 1

    .line 1
    if-eqz p0, :cond_5

    .line 3
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->APP_STORE:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->DEVELOPER:Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 8
    :goto_7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .registers 2

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->$VALUES:[Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 3
    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->id:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
