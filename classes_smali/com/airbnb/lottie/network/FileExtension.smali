.class public final enum Lcom/airbnb/lottie/network/FileExtension;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/network/FileExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/network/FileExtension;

.field public static final enum JSON:Lcom/airbnb/lottie/network/FileExtension;

.field public static final enum ZIP:Lcom/airbnb/lottie/network/FileExtension;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/airbnb/lottie/network/FileExtension;

    .line 3
    const-string v1, "JSON"

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, ".json"

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sput-object v0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 13
    new-instance v1, Lcom/airbnb/lottie/network/FileExtension;

    .line 15
    const-string v3, "ZIP"

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, ".zip"

    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/airbnb/lottie/network/FileExtension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    sput-object v1, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lcom/airbnb/lottie/network/FileExtension;

    .line 28
    aput-object v0, v3, v2

    .line 30
    aput-object v1, v3, v4

    .line 32
    sput-object v3, Lcom/airbnb/lottie/network/FileExtension;->$VALUES:[Lcom/airbnb/lottie/network/FileExtension;

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
    iput-object p3, p0, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static forFile(Ljava/lang/String;)Lcom/airbnb/lottie/network/FileExtension;
    .registers 6

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/network/FileExtension;->values()[Lcom/airbnb/lottie/network/FileExtension;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_16

    .line 9
    aget-object v3, v0, v2

    .line 11
    iget-object v4, v3, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_13

    .line 19
    return-object v3

    .line 20
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v1, "Unable to find correct extension for "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 43
    sget-object p0, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 45
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/network/FileExtension;
    .registers 2

    .line 1
    const-class v0, Lcom/airbnb/lottie/network/FileExtension;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/network/FileExtension;
    .registers 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->$VALUES:[Lcom/airbnb/lottie/network/FileExtension;

    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/network/FileExtension;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/network/FileExtension;

    .line 9
    return-object v0
.end method


# virtual methods
.method public tempExtension()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ".temp"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    .line 3
    return-object v0
.end method
