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

    new-instance v0, Lcom/junrar/rarfile/HostSystem;

    const-string v1, "msdos"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/junrar/rarfile/HostSystem;->msdos:Lcom/junrar/rarfile/HostSystem;

    new-instance v1, Lcom/junrar/rarfile/HostSystem;

    const-string v3, "os2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/junrar/rarfile/HostSystem;->os2:Lcom/junrar/rarfile/HostSystem;

    new-instance v3, Lcom/junrar/rarfile/HostSystem;

    const-string v5, "win32"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/junrar/rarfile/HostSystem;->win32:Lcom/junrar/rarfile/HostSystem;

    new-instance v5, Lcom/junrar/rarfile/HostSystem;

    const-string v7, "unix"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/junrar/rarfile/HostSystem;->unix:Lcom/junrar/rarfile/HostSystem;

    new-instance v7, Lcom/junrar/rarfile/HostSystem;

    const-string v9, "macos"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/junrar/rarfile/HostSystem;->macos:Lcom/junrar/rarfile/HostSystem;

    new-instance v9, Lcom/junrar/rarfile/HostSystem;

    const-string v11, "beos"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lcom/junrar/rarfile/HostSystem;->beos:Lcom/junrar/rarfile/HostSystem;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/junrar/rarfile/HostSystem;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/junrar/rarfile/HostSystem;->$VALUES:[Lcom/junrar/rarfile/HostSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/junrar/rarfile/HostSystem;->hostByte:B

    return-void
.end method

.method private equals(B)Z
    .registers 3

    iget-byte v0, p0, Lcom/junrar/rarfile/HostSystem;->hostByte:B

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static findHostSystem(B)Lcom/junrar/rarfile/HostSystem;
    .registers 3

    sget-object v0, Lcom/junrar/rarfile/HostSystem;->msdos:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->os2:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->win32:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_1b

    return-object v0

    :cond_1b
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->unix:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->macos:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_2d
    sget-object v0, Lcom/junrar/rarfile/HostSystem;->beos:Lcom/junrar/rarfile/HostSystem;

    invoke-direct {v0, p0}, Lcom/junrar/rarfile/HostSystem;->equals(B)Z

    move-result p0

    if-eqz p0, :cond_36

    return-object v0

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/junrar/rarfile/HostSystem;
    .registers 2

    const-class v0, Lcom/junrar/rarfile/HostSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/junrar/rarfile/HostSystem;

    return-object p0
.end method

.method public static values()[Lcom/junrar/rarfile/HostSystem;
    .registers 1

    sget-object v0, Lcom/junrar/rarfile/HostSystem;->$VALUES:[Lcom/junrar/rarfile/HostSystem;

    invoke-virtual {v0}, [Lcom/junrar/rarfile/HostSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/junrar/rarfile/HostSystem;

    return-object v0
.end method
