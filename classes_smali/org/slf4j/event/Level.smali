.class public final enum Lorg/slf4j/event/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/slf4j/event/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/slf4j/event/Level;

.field public static final enum DEBUG:Lorg/slf4j/event/Level;

.field public static final enum ERROR:Lorg/slf4j/event/Level;

.field public static final enum INFO:Lorg/slf4j/event/Level;

.field public static final enum TRACE:Lorg/slf4j/event/Level;

.field public static final enum WARN:Lorg/slf4j/event/Level;


# instance fields
.field private levelInt:I

.field private levelStr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lorg/slf4j/event/Level;

    .line 3
    const-string v1, "ERROR"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x28

    .line 8
    invoke-direct {v0, v1, v2, v3, v1}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    sput-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    .line 13
    new-instance v1, Lorg/slf4j/event/Level;

    .line 15
    const-string v3, "WARN"

    .line 17
    const/4 v4, 0x1

    .line 18
    const/16 v5, 0x1e

    .line 20
    invoke-direct {v1, v3, v4, v5, v3}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 23
    sput-object v1, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    .line 25
    new-instance v3, Lorg/slf4j/event/Level;

    .line 27
    const-string v5, "INFO"

    .line 29
    const/4 v6, 0x2

    .line 30
    const/16 v7, 0x14

    .line 32
    invoke-direct {v3, v5, v6, v7, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    sput-object v3, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    .line 37
    new-instance v5, Lorg/slf4j/event/Level;

    .line 39
    const-string v7, "DEBUG"

    .line 41
    const/4 v8, 0x3

    .line 42
    const/16 v9, 0xa

    .line 44
    invoke-direct {v5, v7, v8, v9, v7}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    sput-object v5, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    .line 49
    new-instance v7, Lorg/slf4j/event/Level;

    .line 51
    const-string v9, "TRACE"

    .line 53
    const/4 v10, 0x4

    .line 54
    invoke-direct {v7, v9, v10, v2, v9}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    sput-object v7, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    .line 59
    const/4 v9, 0x5

    .line 60
    new-array v9, v9, [Lorg/slf4j/event/Level;

    .line 62
    aput-object v0, v9, v2

    .line 64
    aput-object v1, v9, v4

    .line 66
    aput-object v3, v9, v6

    .line 68
    aput-object v5, v9, v8

    .line 70
    aput-object v7, v9, v10

    .line 72
    sput-object v9, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lorg/slf4j/event/Level;->levelInt:I

    .line 6
    iput-object p4, p0, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/slf4j/event/Level;
    .registers 2

    .line 1
    const-class v0, Lorg/slf4j/event/Level;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/slf4j/event/Level;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/slf4j/event/Level;
    .registers 1

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    .line 3
    invoke-virtual {v0}, [Lorg/slf4j/event/Level;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/slf4j/event/Level;

    .line 9
    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/slf4j/event/Level;->levelInt:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    .line 3
    return-object v0
.end method
