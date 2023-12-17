.class public Lcom/micloud/midrive/stat/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterExceptionMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "RetriableException"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_11

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string v0, "UnretriableException"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_22

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_22
    const-string v0, "SFSFileTransferClient$FileTransferException"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_33

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x100

    .line 58
    if-le v0, v1, :cond_40

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    :cond_40
    return-object p0
.end method

.method public static getFailMsgByException(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_13

    .line 19
    return-object v0

    .line 20
    :cond_13
    invoke-static {p0}, Lcom/micloud/midrive/stat/StatUtils;->filterExceptionMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
