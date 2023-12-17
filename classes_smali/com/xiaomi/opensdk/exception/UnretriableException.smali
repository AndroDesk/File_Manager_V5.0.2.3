.class public Lcom/xiaomi/opensdk/exception/UnretriableException;
.super Ljava/lang/Exception;
.source "UnretriableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private mStep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 10
    iput p2, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iput-object p2, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    iget-object v0, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mErrorCode:I

    .line 3
    return v0
.end method

.method public getStep()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mStep:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setStep(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mStep:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "]"

    .line 15
    const-string v3, "["

    .line 17
    if-eqz v1, :cond_40

    .line 19
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_3c

    .line 44
    const-string v4, ":"

    .line 46
    invoke-static {v0, v4}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    :cond_3c
    invoke-static {v0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    :cond_40
    iget v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mErrorCode:I

    .line 67
    if-lez v1, :cond_4e

    .line 69
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mErrorCode:I

    .line 75
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    :cond_4e
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    .line 81
    if-eqz v1, :cond_61

    .line 83
    const-string v1, ": "

    .line 85
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mDescription:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    :cond_61
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mStep:Ljava/lang/String;

    .line 100
    if-eqz v1, :cond_74

    .line 102
    const-string v1, ", "

    .line 104
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/xiaomi/opensdk/exception/UnretriableException;->mStep:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    :cond_74
    return-object v0
.end method
