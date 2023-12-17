.class public final enum Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
.super Ljava/lang/Enum;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

.field public static final enum FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

.field public static final enum MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->MALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    new-instance v1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->FEMALE:Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->$VALUES:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 2

    const-class v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;
    .registers 1

    sget-object v0, Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->$VALUES:[Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    invoke-virtual {v0}, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/opensdk/pdc/UserProfile$Gender;

    return-object v0
.end method
