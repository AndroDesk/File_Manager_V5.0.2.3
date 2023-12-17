.class public Lcn/kuaipan/android/exception/NetworkException;
.super Lcn/kuaipan/android/exception/KscException;
.source "NetworkException.java"


# static fields
.field private static final serialVersionUID:J = 0x2f56144f77280eefL


# instance fields
.field private final origMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 4
    if-nez p3, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    :goto_b
    iput-object p1, p0, Lcn/kuaipan/android/exception/NetworkException;->origMessage:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcn/kuaipan/android/exception/NetworkException;->origMessage:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    iget-object v1, p0, Lcn/kuaipan/android/exception/NetworkException;->origMessage:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "\n"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public getSimpleMessage()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "(ErrCode: "

    .line 11
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcn/kuaipan/android/exception/KscException;->getErrorCode()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ")"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, ": "

    .line 37
    if-eqz v1, :cond_52

    .line 39
    const-string v3, " - ["

    .line 41
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcn/kuaipan/android/exception/NetworkException;->origMessage:Ljava/lang/String;

    .line 62
    if-eqz v1, :cond_4c

    .line 64
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcn/kuaipan/android/exception/NetworkException;->origMessage:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    :cond_4c
    const-string v1, "]"

    .line 79
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    :cond_52
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 85
    if-eqz v1, :cond_6b

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 90
    move-result v1

    .line 91
    const/16 v3, 0x64

    .line 93
    if-ge v1, v3, :cond_6b

    .line 95
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscException;->detailMessage:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    :cond_6b
    return-object v0
.end method
