.class public Lcn/kuaipan/android/exception/KscRuntimeException;
.super Ljava/lang/RuntimeException;
.source "KscRuntimeException.java"

# interfaces
.implements Lcn/kuaipan/android/exception/IKscError;


# static fields
.field private static final serialVersionUID:J = 0x4123ea01721fbf22L


# instance fields
.field private final detailMessage:Ljava/lang/String;

.field private final errCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p2, :cond_12

    const-string v1, ""

    goto :goto_18

    :cond_12
    const-string v1, " details:"

    .line 5
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p3}, Lcn/kuaipan/android/exception/KscException;->getSerial(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    .line 8
    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput p1, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->errCode:I

    .line 10
    iput-object p2, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->detailMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 3
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, p1, v0, p2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->errCode:I

    .line 3
    return v0
.end method

.method public getSimpleMessage()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "(ErrCode:"

    .line 11
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->errCode:I

    .line 17
    const-string v2, ")"

    .line 19
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->detailMessage:Ljava/lang/String;

    .line 25
    if-eqz v1, :cond_31

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x64

    .line 33
    if-ge v1, v2, :cond_31

    .line 35
    const-string v1, ": "

    .line 37
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcn/kuaipan/android/exception/KscRuntimeException;->detailMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    :cond_31
    return-object v0
.end method
