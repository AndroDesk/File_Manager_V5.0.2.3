.class public final enum Lcom/junrar/rarfile/HostSystem;
.super Ljava/lang/Enum;
.source "HostSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/junrar/rarfile/HostSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/junrar/rarfile/HostSystem;

.field public static final enum beos:Lcom/junrar/rarfile/HostSystem;

.field public static final enum macos:Lcom/junrar/rarfile/HostSystem;

.field public static final enum msdos:Lcom/junrar/rarfile/HostSystem;

.field public static final enum os2:Lcom/junrar/rarfile/HostSystem;

.field public static final enum unix:Lcom/junrar/rarfile/HostSystem;

.field public static final enum win32:Lcom/junrar/rarfile/HostSystem;


# instance fields
.field private hostByte:B


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/junrar/rarfile/HostSystem;

    .line 3
    const-string v1, "msdos"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 9
    sput-object v0, Lcom/junrar/rarfile/HostSystem;->msdos:Lcom/junrar/rarfile/HostSystem;

    .line 11
    new-instance v1, Lcom/junrar/rarfile/HostSystem;

    .line 13
    const-string v3, "os2"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 19
    sput-object v1, Lcom/junrar/rarfile/HostSystem;->os2:Lcom/junrar/rarfile/HostSystem;

    .line 21
    new-instance v3, Lcom/junrar/rarfile/HostSystem;

    .line 23
    const-string v5, "win32"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 29
    sput-object v3, Lcom/junrar/rarfile/HostSystem;->win32:Lcom/junrar/rarfile/HostSystem;

    .line 31
    new-instance v5, Lcom/junrar/rarfile/HostSystem;

    .line 33
    const-string v7, "unix"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 39
    sput-object v5, Lcom/junrar/rarfile/HostSystem;->unix:Lcom/junrar/rarfile/HostSystem;

    .line 41
    new-instance v7, Lcom/junrar/rarfile/HostSystem;

    .line 43
    const-string v9, "macos"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 49
    sput-object v7, Lcom/junrar/rarfile/HostSystem;->macos:Lcom/junrar/rarfile/HostSystem;

    .line 51
    new-instance v9, Lcom/junrar/rarfile/HostSystem;

    .line 53
    const-string v11, "beos"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    .line 59
    sput-object v9, Lcom/junrar/rarfile/HostSystem;->beos:Lcom/junrar/rarfile/HostSystem;

    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/junrar/rarfile/HostSystem;

    .line 64
    aput-object v0, v11, v2

    .line 66
    aput-object v1, v11, v4

    .line 68
    aput-object v3, v11, v6

    .line 70
    aput-object v5, v11, v8

    .line 72
    aput-object v7, v11, v10

    .line 74
    aput-object v9, v11, v12

    .line 76
    sput-object v11, Lcom/junrar/rarfile/HostSystem;->$VALUES:[Lcom/junrar/rarfile/HostSystem;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-byte p3, p0, Lcom/junrar/rarfile/HostSystem;->hostByte:B

    .line 6
    return-void
.end method

.method private equals(B)Z
    .registers 3

    .line 1
    iget-byte v0, p0, Lcom/junrar/rarfile/HostSystem;->hostByte:B

    .line 3
    if-ne v0, p1, :cond_6

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    return p1
.end method

.method public static findHostSystem(B)Lcom/junrar/rarfile/HostSystem;
    .registers 3

    .line 1
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->msdos:Lcom/junrar/rarfile/HostSystem;

    .line 3
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-object v0

    .line 10
    :cond_9
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->os2:Lcom/junrar/rarfile/HostSystem;

    .line 12
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->win32:Lcom/junrar/rarfile/HostSystem;

    .line 21
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1b

    .line 27
    return-object v0

    .line 28
    :cond_1b
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->unix:Lcom/junrar/rarfile/HostSystem;

    .line 30
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_24

    .line 36
    return-object v0

    .line 37
    :cond_24
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->macos:Lcom/junrar/rarfile/HostSystem;

    .line 39
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->beos:Lcom/junrar/rarfile/HostSystem;

    .line 48
    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/HostSystem;
    .registers 2

    .line 1
    const-class v0, Lcom/junrar/rarfile/HostSystem;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/junrar/rarfile/HostSystem;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/HostSystem;
    .registers 1

    .line 1
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->$VALUES:[Lcom/junrar/rarfile/HostSystem;

    .line 3
    invoke-virtual {v0}, [Lcom/junrar/rarfile/HostSystem;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/junrar/rarfile/HostSystem;

    .line 9
    return-object v0
.end method
