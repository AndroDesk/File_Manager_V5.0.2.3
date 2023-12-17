.class public final enum Lmiui/cloud/common/XDeviceInfo$PhoneType;
.super Ljava/lang/Enum;
.source "XDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/cloud/common/XDeviceInfo$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public static final enum PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

.field public static final enum PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 3
    const-string v1, "PAD"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "pad"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PAD:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 13
    new-instance v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 15
    const-string v3, "PHONE"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "phone"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lmiui/cloud/common/XDeviceInfo$PhoneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lmiui/cloud/common/XDeviceInfo$PhoneType;->PHONE:Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 28
    aput-object v0, v3, v2

    .line 30
    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lmiui/cloud/common/XDeviceInfo$PhoneType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 34
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
    iput-object p3, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->mDesc:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .registers 2

    .line 1
    const-class v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 9
    return-object p0
.end method

.method public static values()[Lmiui/cloud/common/XDeviceInfo$PhoneType;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->$VALUES:[Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 3
    invoke-virtual {v0}, [Lmiui/cloud/common/XDeviceInfo$PhoneType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmiui/cloud/common/XDeviceInfo$PhoneType;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/XDeviceInfo$PhoneType;->mDesc:Ljava/lang/String;

    .line 3
    return-object v0
.end method
